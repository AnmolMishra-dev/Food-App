import 'package:flutter/material.dart';

import '../Const.dart';
class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: InkWell(onTap: (){  Navigator.pop(context);},child: Icon(Icons.arrow_back_ios,size: 20,color: AppColors.Text_COLOR,)),title: Padding(
        padding: const EdgeInsets.only(right: 30),
        child: Center(child: Text("jerry",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 20),)),
      ),
      backgroundColor: AppColors.White_Text_COLOR,
        elevation: 0,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(

            children: [

           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Center(

                 child: Container(
                   decoration: BoxDecoration(color: Colors.grey.shade100,
                       borderRadius:
                       BorderRadius.all(Radius.circular(20))
                   ),
                   width: 150,
                   height: 30,

                   child: Center(child: Text("Today 05.10 PM",style: TextStyle(color: AppColors.Text_COLOR),)),)),
           ),
              Row(

                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage("data:image/jpeg;base64,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"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Center(
                        child: Text("Are you ready to order?\n"
                            "Can I take your order?\n"
                            "Anything to drink?\n"
                            "Would you like … (chips) with that?\n"),
                      ),
    decoration: BoxDecoration(color: Colors.grey.shade100,
            borderRadius:
            BorderRadius.all(Radius.circular(10))
    )
    ,width: MediaQuery.of(context).size.width*.80,height: 100,),
                  )
                ],
              ),
              Card(
                elevation: 1,
                child: Container(
child: Image.asset("assets/image/3.jpg"),
                  decoration: BoxDecoration(

                 borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),

                width: 250,
                ),
              ),
              Row(

                children: [

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(

                      child: Center(
                        child: Text("I’ll have…\n"
                            "I’d like…\n"
                            "Can I have …\n"
                            "We’d like to order …\n"
                            ,style: TextStyle(color: AppColors.White_Text_COLOR),),
                      ),
                      decoration: BoxDecoration(color: Colors.red.shade100,
                          borderRadius:
                          BorderRadius.all(Radius.circular(10))
                      )
                      ,width: MediaQuery.of(context).size.width*.80,height: 100,),
                  ),
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage("data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBYVFRgSFRUYGBgYGBgYGBIYGBgYGBEYGBgZGhgYGBgcIS4lHB4rHxgYJjgmKy8xNTU2GiQ7QD40Py42NTEBDAwMEA8QHxISHzQrJCs0NDQ0NjQ0NDQ0NDQ0NDQ0MTQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NP/AABEIARAAugMBIgACEQEDEQH/xAAcAAACAgMBAQAAAAAAAAAAAAAEBQIDAAEGBwj/xABEEAACAQIEAwUDCgQEBAcAAAABAgADEQQSITEFQVEGImFxgTKRoRNCUmJygrHB0fAHFJKyI6LC4SQzQ1MVY3ODw+Lx/8QAGgEAAwEBAQEAAAAAAAAAAAAAAAIDAQQFBv/EACgRAAMBAAICAgEDBAMAAAAAAAABAhEDIRIxMkEEIlFxEyOBkQUUQv/aAAwDAQACEQMRAD8AJ7OYoh1HIz1Wge6D4CePcIBV0H1hPYsMO4vkJ0c30JJZeU1KAaWBpuQ3AFlfh/SL6mHZDOklVWiGlZ5H9mORXhMeV0baNqVZWFwYnx2GVFZ2YKigszsQqqBuSToBPPON/wAQsl6eD1OxxDDQfYQ7+be6FTNdo1No9N41xejh0LVaipcHKp1Zj9VRqZ5jiOJK7lqa2uf+Y4Vm+6mqr65vScTWxT1XNSo7O53diST6nl4Qqg56wmWkUnN7OqKZjmZix+kxLG3S55eEMw+KRBYmculdrbzGYmGHXPIp+KH+M40pBUC4gWD43UoNmSoyBjckWsT1ZT3W8yP91JE0Vvp7vA8j75visJVVU+z0/hva3MAtdQP/ADUBy/fTUr5gkeUbO4OoIIOoINwQeYPOec9nmvpysGUdAdx6G48NI/w2Kaie6CyE3an0vuydD1Gx8DrIv2UfBs+S/wBHTTJXh6yuodDdWFwf3seVpbFOcyYJkwQAwyJkjImCA3MmTJoHnmEW1RR0YD3GeuUD3R5CeSrpV++f7p6vhGvTU+AnRzekRRGm/ehZEAU96MBIsbCMpxOISmjVHYKiKWZ2NgqgXJJ6WltRrTyb+K/aIswwKHurletb5zGzIh8ALMfEr0glpmHO9t+17458iErhlN0p7GoRs7jrzCnbz25dTItJoJZLOjC+kYfReB01hCyiRqeDGkQYT/LnlFSPGGCxBvaI5LzSZj0yJiUyTGwpg8pfhsLmNgIpVRr6JcIpZcp6OyfdamHP+cLGbm5lNVAgK/XpN/UQn+gy+it9ZB/udsLF4hfCKhSrk+ZUB06VFFwQPFA1/sCdBOZz5HR+lRB6Owpn4OZ08xHF+TKm+jJkyZAgYZEyRkTADcyZMmgcHi0yYh16O3909L4U96S+U4LtNRy4tvEhvfO07PvekPKdN9ymRXsKO8OTYQF94ZQOkhQyKsd7M8A7c4Y08fXBJIdxUBJuSKiht+gJYDynv2O2nj/8W8LatQrAe3TdCfGmwYX9Kn+WNAM4UJfaGYfCEwNKltyIdhKrN7GvqB+JvKpoxYMaXDpZ/wCGeMlQwGIbZlHqW/SMaPB8RbV9fs/7xvIrMb9ACcL6mFUcMian3wteH113ZG81K/EEwgUxaz0M32XB+DBfxmOis8efQuPEFvYazouGgZc0XU8NQBuabr4ZC/8AZmjSji6I0DqPqkhT7jrJ1SaOjhlqtbQLjHu5B5/J+tqn/wBvjGFIaQfH0lYBgfq3HLMRlYeIYIffCMO2ZFa1syg26XF5FnRPyZXjnCozHZe9/Sc35TqjOR4yP+Hrf+lU/sadahuAeoB+ExHJ+X8l/BKZMEyBymGRMlImCA3MmTJoCDttStXVuqiP+zTdwRb26p6o3pDezB7k6ffGR+xvU3hGHOkHq7zmO3Pan+QoDIAa1W60wdkC2zVCOYF105kjxkWtGDe13auhg1AqMWqEXWgli7eJvoq+J9LzxftP2orY5gHyoim6UUFwhsRmLkZmaxI5DwETYmu7u1R3Luxuzsbsx6kysCMpFbMAmETc0I+GaXYfFOmqO6/ZYge7aOMJ2txSbuHHR1194tEM2BBSMuSp9M73h/bim1lrIUP017y/r8J0+CxdGsM1N1ceBE8cllCqyNmRirfSU2Pr19YeJaPy2vktPafkl6TGoqdLTzjBdscSlg2SoPrd1veP0lnEO2FeopRFWkDuyklyOgY+z6a+IiuGdP8A3OLx0u7ZcRpqfkKKqGBGeogAKka5FZedxqeW3WyjDcSxAAC4ioByu2a39V4vRQdIw4VSzMEO+48RNczK7OJ8t3Wrr+BgOKYlkem9QOHR176qLKyMC2ZQCLb857Ci2AHQWnlvDKAqIhQXN81j8wBiGDeFri3Mjw07jgOLb/kOwbKvccXuQtgyPcnvAFdb3IPgSed0vLC7ivHyb0eCbmpuBMyQMnImCAyZMmTQB+2yXRT4zOzJ7su7YrekPOD9mj3Z0T8CT9j2rEXaLsnQx6oKpdGTNkqIQGUNbMCGBBByjlyj6pN4feSZp5Pxb+FJpI1VcWpVFZiKlKxAUEnvK1th0nmoPhPVP4u8brqy4MAJSdA7MGu1fUgow+aoIGnztOQInlplITzSVUtNTCZIJIkRnqDUzJO0iJaG0A8r++ajGtK7TYkqxubjbb9+klQp5mA8YJ9Bn0bZOcK/lSVDDX96S9aWUhG2clb/AEWAUg/GMOGYcgW6Egr0N+Xha0V39lJ49eCWmgzAN1906bB4GzK6nvJnIUC/yi2DMt7i3dLNf6sqfhK1aoQNkJRjm0NiPZuOY0bpCuBOyVKS1FJBdCrDVXVm+TRxzykkHXkNpLktNdFuOHD7/wADzhOFRKKBRoQajldA1jlu3MgW/wBuUZcNw/8AxNh8wsz+DEPTsfMMhA6C8mtMK7lVYouYLlC5Q7td1Un2yXCgAXsxYHkA4wGFCKfpMczne7HkD0H6ncmc8rXp03fjPigqbmTJQ5jJEyUiYAZMmjNzQLe1a3o+sX9nNoz7Sn/BIi3s9tLx8CT9j9pqjvNtI0jrJs1HmH8ZcExrYaoqlsy1E011QhgPOzOfumeYrvPpXj3DRXRdg9OolWmxFwrobi/1WF1Pgxnjva3sS9APi6SotIHM9FXLGhmYLZCVGZLt0BUdbXjRX0JU+2cc0gp5RvV7MYpaNPEmn/hVWpqjh0NzUICZte4CSBdrAEi8Dx/C61B2StTdGUgMrDa+gII0ZTbRhcR/LWKpxAhaYnTym1pnNlPdud20A87zaLYi9ztt4bjzH5eMx1g3igwYbNdRzFx6afkJLAIVcBhY/oZZTxhW9lXe+pJt+EypjGZlZguh+aLX5Hc+A90zRkl7GWJoioCNrMrBuQuigN5Dc+UJwrk3VrqwKhhsQdAT/vElDGsMmtwq5WSw724Pj7OT1EypXbMwZmcNYZmJPd1A3+0NPOIk2sHdpdjfGYlc4UuDbRnUaOhDBkLfNJvqNjbkdJ31DDU0wbVKuoKfLO67rZe7kI+itl0316meacLpq9alTe2VqiBgdiC4up8Dt6z0jjGFCYYYZSSK1alSXqFd1LA9TlV7tuedzclOWfFpIfit1LpoZ4MPUK1HGRB3kp8ySNGe2gsCbC51IOhAjMTkeB8eVEVGN1UWNO4z0yPoFj3k8CbjlpoHVLjtNjor+iZvgpMzw8RXfk9Y1mQOnxSkdC+T7asl/LOBf0hKVFb2WB8iD+EDSciZIyJgBkyaM3NAVcZ4v8qMoFhLeA1QNDEoltJypuJ14ksJYdw76SpXi/AYrOtoXI0sNC6la6xXjcMtVHpOLo6MjD6rAg28dYSTIGLgI5nsRVGSrwbFhWemGCqw7uKwzE2ZRzAvbTYW5g2K7Y4zDqiYWsTWIILoArOyDUBjcBCSF1Nr2Noz4hhldGYqC6Kz032emwU2ZHGqnlpuCQdDPOu02FKKjJmZCLtUJzFmO7O3MnrNlJ12LWpdHGYlDnZWJYqSAzG5IGxPpbaH8L4G9bvXype2a1ySNwo/P8YVw7g5rvmvZBo7c2I+avj1PLSdBxXGigi0aK3qMMqIovkGwOXn4DmfIx2kugnc1nL8fwtOmyUkHeUEudzrbLmPM7nwuOsWfJzu8B2DzJ8piazrUJLPlKkKLbMzA3bqdvPc8txTDpTqvTpuHRSAtQEHMLAnUCxsSRcaaQ43NPEHIqnGALS1v6fv985up+Y+Bk5Q51lXiRKdp9mwx5Eg7gjcEagjxvPTuFcWGJq4dWADBS4tqtQhTndTyysKYymzDOdOZ8wUT0f+H3CBTDVn9tgAB/20Jvb7RsL+QHLXm5czTq4d3F6Oa4moSvVQ6ZajgX00znLbrpaF8PwddyGpI/2/ZH9TWB9If2owwTGFiNHVH+GQj3oT6zpeB4lnpjNa4Ci4FrgorbeGa3pGrkahMmoXm0xSnDsZa5dfslib+B7toMvEVByVqKZlNj3VzKR++U7K05TtRhB8ojoLs4IZQNTbUN+Iv5Sc0qeMpS8VqGGGcsM1Cs6m3sMc636ZXvYeVo7wFdnTv2zqcr5bhSbA3AJJAIYG1zOV4Nw1gwLHoco2Fup5/vedPgtHqL1KP/UuT/4/jMpY8CX5LQszcyZA05aZLBTMZYDhocXJl3coVRTM4QbGOwYLSweQwoRdVdmVOM2ZAycrmMVFlDexnmpxTUkeiRmylqYVtbsrGmB6sJ6TTOs884jT/wCOri3dp1C3gz1FD/DOfU+EacEqW2sJVnXDYfurmyJZUFhnb/c3J9YTwTBpQD4qu4NQqXeq21NbXZUHJQNOpt6RTjqmeolPkGF/P22PooUf+4Y2qFXZabC6m7FTswW2hHMXYaeES1qxFopbuegWphcRxNgWzUMICCoPt17bOV28r6D60S9qsNhaRWlhyz1FY/K1CxYAAWyH5ua+vdGltd427W9oaiKKFI5cy3eoPaCEkBU6E5Tc7jl1HJdneHfL4mnQ1CMSWZbXVFUsd9OQH3hCJcryfSRnK1T8Z7f7gh2msJhXquKaKWY8h+J6CFcdofJV6lBSSqOVBNrkWBF7ececGp/J0ioFi/tvzcckHROvXy3rVJrUTiGnjKk4clIaMHa3ecbFuQQ9B15ny17Xs2/LqonIV2vYdWUe43/AGdVwNwrC/wBGc3K+js4VjeFPbvD6UaoGzMjeTAML+WRvfKeytYhTc7WFr7nKgufRFt5mMO0XEkNMplDC40OxOwHre3rOXw+IKD5NPaJ9rz5+XL0j8adTjI836K1fZ1uO4rl7iWZz7kH0m/SL6abkksx3c7t+g8JrheA0t11ZjuxjJ8IFG839M9Em6rv6LMAlheFB8tVPrq6ebLZ1+AeV4ZNJDirZEWp/23RyeiBsrn+h3kqf6i0rJGsyYZkYBEI94StkiSmus6DACyyZ1V6CWEqMtc6Ssy0ejl5PZqQMnBcVikpjNUdEB2LsFv5X39I7IoS9p+Pvhu5SQM5QvmYnKlyVXugd83Vja42G95x/DK101Ys5LMznVnJY99j1O/vjPtJjUr1c9NsyKipmsQGYO7Na41AzAX6gzmKqsjFkOU8+YbzH7MpM9aSXMvJpjbDUQlRnLElsxUH5qkgt8SPQDpD6DnOxI0CqAfG5LW/y+6c/S4iCbv3Dly591Gtyb8jbrptHVB/Zyarbrpy1vz0vEpYzplproV8Zo56juPaUqo6MoRTY+rNGnYHBhC+JcZcy5Ev9HOWZgOQICC/OxPiZNw1HcO1/FAbK5uTdxud7W2PO8H4xxS96NMg8nPI9UBHuJ9Otil5ThOf7dNv0KmpJUqtiX7xqOXAOgTMbqpHPSw16RlUe8GopmW4GnxUjkRylkRIsRRczoOl2+GX8zH6aRRgEu7E8gB79ZnFeJWBpoe8dC4/6fl9aI5d1iKK5iXTK+K4vOwppqFOp6ttb0F/U+EJ4Rh9dRr9IwLBYXIAR0jCg7XnSo8ZxHnXzOq06CgCughKUy25iT+YYAnUkAkDqQNobw/iZCrdPaY5jciwGzAEbeBIkblr0W46T/geU0sJqtTDqUYXVgVYdQRYj3GLaPFWu2dVAsMtmtc6Xvm9fdCBxFLDO6IehcW95tIOWdSqQvAOSigm7LdGPVkOUn1tf1hMWcLxCu9XIcyHI4qLqhdlKsoYaEgIhNvpxnKL0KKMONY8ouFW50iJKgXU7RXxTjRfuJsPjJs7Zh28OvwmPWoSF+b8ZeZx3ZlmZmKnUAG30tZ0v8+qqzucoQXYn5o/M8gOZMrD1HP8AlcXhTz0DdouKGhT7lvlHuEBFwLe05HMC49SJ59WxLOPlSSzuB321LFrZb9BrsNAJbxTir1sSWbRSlkT6CqdB56knxMDo+38nyQlr/bvkHpdxbwHWdMzh4/LevF6CUQKAo5C3n4ynEUriEyJEoQT7ENVLGSwDZG7rlL8wMyX6snMeRB8YRj1AO8BhUqljOqKftD6ri6yozCnnJHdqUTnQHYFktnW3tWsRvrEuGYC1tRbTnf8AWXLXKUyq3zVPaI3Snfp9YgjyB8IINNj903B9LycT4tlOSvJDijibd5RfQZk0/wARSNCp672vvYjxF+GxCnvDUHaJqFfJYkH5y2tc8mXa+wv75WcTctlzBTv3W355dNL8/wBSYtRvaN4uRz0/Q0xnETqiaX9pxy8B4+P7ANLSCs3LKdibG1jYbWv1IhVNG20FvNv0lIlT0hbt17GFLFkb/AE/hLlx7H2E+8xAHpa5MCpUhzJPnt7hpGNFOZgxJlMkjVHNs9vIW/G8Y4bhQb22J8ySPdtBMIut44wzSVFJa3AvD8JpAWyKfuiGUsKi+yijyAE1QaX3nNTZ1ykUvhhcshKMfnobXPVl9l/vAym+K+lRPjlcX9M2kLJmXi6ymI5THY4tpFyzeQ85siLTPZ4Izs6nsXa79TaLu0XFflnKJ/y0Olv+q40LnqBqF9Tz0FoVWpUmYEhqt0S26oNKj/EIPEsfmxc9RVGunID8gBv5Tq4I61ng/wDKc39xxD/kX8SOR0qch3T5H/cCEcNYZBf2277X3YtbUdVAsB4ACZiaoKMchYBSe8Ao0HQ6/CX/ACIyhTyAsRoVIFrg8jOj7PJb/TjLZTiXspMxHIIVt+Tcn/Q+Huk6iZgRGF9M593ubmWYagXYKoJJ5CFf+GuzWAXU/SP4ZfznVcK4atBLkgud22t5dItWkjs415ejksfhMjsu5AUMfrZbkDwAIA8BKUaFVa3ygNT6bM4+yScn+XLA10No0fFCtptmfO+8D71K/lLWaUn2/wCn/XJkzUZhumgOdiL2VQPAtUQX9wMtWUI9jl+ll9y5z+NoVTWKvbNYRh0hvKUUVtLxMfsddIIwwjCi0CoiXhojWiKuw98ZYaQnhjsQWY+USs0IfHZUyiTqesRbjpt6xk2PGbLCvlJyFKoS4N+cffzA6xHxl1ynP1Kklhaedst8qgFnc7Ii6sx8h7zYc4KFvC6zBAaI3uDWP1xqtIeCaM31rD5hkojyrD1/yvynw8e+v2IY3EZ2L2yiwVE+gi6IvnuT4s05/HYg3B6MPj3fzhuNxoQ5QCW6Dl4npFGIqFrjLqdrG/qdNBPQSSWI+YW1TuvsY0cSG7j3t4Ej32jGnlGx35liT7yZzzA7jf8AHwh2GxIIAIv58oxlx9ofYbCJUBDuoH0TufES8dnx83E1AOn+G1vV0JPqTFSIhHsL/SINia9JPmJ/Sv4yVTTfs3jqV1mnSUezfM4mt6fIj8EgvHOFLTpPUz1XIRiA1R7E2NrqpCnXqJzP867GyZlHgzJ8Ab/hGRqOUWm7lszrvyC98jXUjuHfrJ/0q3tl3yQpxLGUVVsAvQAe7SBPveH4iA1J1IhLNIPab6yr/kdv0mNNp7B8ahP9KIP9UxhpFn7HZVk/xE+y34GNqSReU76Hx+GVl/FhGiiL9sbC1BLkEqWEUxMNfoJpyRkVm3MwlnZS7ShzLmlLzC66RSHsZf8AzR6wRjrBvlY6RG296HGBRls62zsStIEXylQC9YjmqAgjq7KOsGrIF7ovYdTcnqSTuSbknmTHeCqIFauzBUYBKWYhctFL5DY/Odiznn3wPmic/wAV4ggYhczeIRre+1pDh6Z1fm8j5Xv+hTxJEBLWOY6mxIvYWGl/KVYWmFF+Z3/fSVVahdhcHU316DX8QJcGnSkjlxqcMYWax2O3gZGpTKnMPUdfHz/fSWOmZZdgKgbuNuP3eaDeLShcSxGVfeb/AIc5fQ4aT3m36nf06R1guGre4Eb0uG9YlWl7BTVfFCLC4HkouZHilApWpoTrkZiPokkAfC87HDUkTYa9ZxvFq+fGuRsoVPUAsf7h7pOeR1WfQ1cKmfJvWU4gQBxGNcQBxOhEZZsD/DQ/Wqfig/KaVLgyumRkT2s2dwdTlI1IsL2v3RtC6SxE+i2dlJF8j32Vrj7JWofgh98ZiLBZXVTtnX3Pemfg5h9AnKL7jQ+a6H4gxfsf6CacIpiD04RTgD9BCyLmbBkHMVk5WsgZRUl5g9YzEVYHXawgctxDSvLLIizocS6JqAosLZt2t0zHWIMfxENoOfqT5CCVsU1RrAFidgL2A6k9IZSwIRSTqx3P6RZSXoKa3WLEBLi+llOnS5G/uMutNYdbu3gq/Fm/SXmnHQN9mURK8ShRg6//AKOn7/OF0acIxFHMh6jUQYnljHvAMUroGHrGWJxGUThODYw0qlvmt+PMfn751GJqZhcSFR+o6PPxnEY+PN5y+CqZ6zOfnO59LkD4ARpj3yI7dAfU8on4YlmA6C0pMpPoiqpy9GlZYDUWM3ECrJHRKWA06Ou+mYsBbW5vufWH0xKUWEoIrOmQTiidwsNCATfoRqD7xDluHcHLrleytmy573B0FtVJ9ZTi6ZZCoANytwTa65hmF/K8vVixLFFS9gFU3AAHgBrcmI/YwRThCQanCVM0SmWXkGM1mmRWNKNNBcQ0JaA4loSM/QDUOstyyoC5huSVI10VUsqjQW69T5nnBsViL6CVGtpByY2CzPesI4aO+/iifAv+sY/JRThms2YctPP93jmjUBioXk1PTFSbqVAAZvENZbiK8Rm6E/vxmiSvIEqC97b3uD0PKdDwvFZ0F5zwJ5qw9L/23jfhNMhToRckgc9ddvO8V4y1vEb45V7qUx85rn7Ka/3ZPfA8Fo0t4kM2IZBr8mip94jO/wDco+7KcNoYT60GsnBwRB6ywlTpKK0YhPsFUS9RK1EsWIzsn0SkhIiSEDWXU5feD05deBP2yQk5BZOTZVFbmL8SYdUMX4iPIUU0V1jDLBsKkLzCOctvs56VqjHc28t/ef0lqyYjYV01ksLCXUKlpUZpYGNaOKNS8tKAwDDND0Mw56WMitBRyjDh9MC9RtFQFifIXg1OmWNhJdpqgp4cUR7VUhD9nd/8oI9RJ3WLEV4p8n5P0hFw27h6rbvmc35FyWt6AgekjTOsPw62p+hgCbykrFgeXk2xvTOkqqydA6SNUQJT8ihZYJASYinZJuSEjJCYay6nLBK6csWDJyuy0TDME00QsU1DAKm8NqmCWuYyFotpCwvBf5mXYupZbRbHRBTpUsttJYrCmmRrdGvkbmCPaRvrDe/MEHe9tU4TSpaity5py/aNWm1SEpQvCaWE8JrpCYymgkPpodoThsDG+GwQXUiTrkSD+i6ZXgMGEXO04/i+L+XxDEeyncXzNi5/tHoY27Rce1NCiQSNHqDUJ9UdW8OXOIuH0BmAGw18+ZJ8SYvHLp+TK34zPivobstkt4RUm8b1/ZPlFCby6OWPTGmH2m6okMPtLnEwT/0CzYm2E0IjOuX0SkhICTWaFMtWWJKllqRWElwkWkhItFKA9aUINZdVlbaLeOhK9AOLe5g8k51lccXD/9k="),
                  ),
                ],
              ),



          ],),
          Container(width: MediaQuery.of(context).size.width,height: 50,color:AppColors.White_Text_COLOR,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
              Icon(Icons.camera_alt,color: AppColors.Primary_Color),

              Container(
                height: 35,
                decoration: BoxDecoration(    color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(10)
                ),

                width: MediaQuery.of(context).size.width*.9,
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                   suffixIcon: Icon(Icons.arrow_forward_ios,color:AppColors.Primary_Color),
                      border:InputBorder.none,
                      hintText: "Write something"
                  ),
                ),
              )


            ],),
          ),
          
          )
        ],
      ),

    ) ;
  }
}
