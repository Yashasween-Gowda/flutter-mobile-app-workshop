@override
Widget build(buildContexxt context)
{
    return Scarffold(
        backgroundColor:Color.yellow,
        appBar:AppBar(
            title:const Text('Button & SnackBar'),
            backgroundColor:Color,yellow,

        ),
        body:Center(
            children:[
                SizedBox(
                    width:200,
                    height:60,
                    child:ElevatedButton(
                        style:ElevatedButton.styleForm(
                            backgroundColor:color.deepPurple,
                            foregroundColor:color.white,
                        ),
                        onPressed:(){
                            showMessage(context);
                        
                        },
                        child:const Text(
                            'click Me',
                            style.TextStyle(fontSize:20),
                        ),
                    )
                )
            ]
        )
    )
}