 
            $(document).ready(function(){
                $(".uname").change(function(){
                    var uname = $(this).val();
                    if(uname.length > 3){
                        $(".status").html("<img src='imgs/loading.gif'><font color=gray> Checking availability...</font>");
                         $.ajax({
                            type: "POST",
                            url: "check",
                            data: "uname="+ uname,
                            success: function(msg){

                                $(".status").ajaxComplete(function(event, request, settings){
                                     
                                    $(".status").html(msg);

                                });
                            }
                        }); 
                    }
                    else{
                         
                        $(".status").html("<font color=red>username should be more than <b>3</b> chars</font>");
                    }
                    
                });
            });
           