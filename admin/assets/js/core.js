
  $(document).ready(function() {
    $().ready(function() {

      $("a.delete").click(function(event) {
        if (confirm('Deseja realmente apagar esse conteudo?') == true) {
          $(this).closest('tr').delay(2000).fadeOut(500);
          $.post('conteudo-proccess.php', {
              action: "xdel",
              id: $(this).attr("data-id")
            },
            function(returnedData, status, xhr) {
              //  console.log(returnedData);
              if (returnedData == '302') {
                window.location.href = "index.php"
              } else {
                // console.log("deletado")
              }


            }).fail(function() {
            // console.log("error");
          });

          $.notify({
                icon: "check_circle_outline",
                message: "Conteúdo deletado <b>com sucesso</b>"

              }, {
                type: 'danger',
                timer: 2000,
                placement: {
                  from: 'bottom',
                  align: 'right'
                }
              });

          //This is here to prevent jsFiddle from navigating away from this page to your delete function
          event.preventDefault();
        } else
          event.preventDefault();
      });

      $("a.delete-associado").click(function(event) {
        if (confirm('Deseja realmente apagar esse associado?') == true) {
          $(this).closest('tr').delay(2000).fadeOut(500);
          $.post('conteudo-proccess.php', {
              action: "xdel-associado",
              id: $(this).attr("data-id")
            },
            function(returnedData, status, xhr) {
                console.log(returnedData);
              if (returnedData == '302') {
                // window.location.href = "index.php"
              } else {
                // console.log("deletado")
              }


            }).fail(function() {
            // console.log("error");
          });

          $.notify({
                icon: "check_circle_outline",
                message: "Associado deletado <b>com sucesso</b>"

              }, {
                type: 'danger',
                timer: 2000,
                placement: {
                  from: 'bottom',
                  align: 'right'
                }
              });



          //This is here to prevent jsFiddle from navigating away from this page to your delete function
          event.preventDefault();
        } else
          event.preventDefault();
      });


    });
  });




  $(document).on({
    ajaxStart: function(){
        // $("body").addClass("loading");
        // console.log("ajax start"); 
        $("#btnLoadEnabled").hide();
        $("#btnLoad").show();
        // <span class="spinner-border spinner-border-sm"></span>
        // Loading..
      },
      ajaxStop: function(){ 
        // console.log("ajax stop"); 
        // console.log("ajax start"); 
        $("#btnLoadEnabled").show();
        $("#btnLoad").hide();
        // $("body").removeClass("loading"); 
    }    
});