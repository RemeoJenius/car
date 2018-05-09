<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <meta charset="utf-8">
        <title></title>
        <script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.min.js"></script>
    </head>
    <body>
    <div id="uploadForm">
        <input id="file" type="file"/>
        <button id="upload" type="button" onclick="click_me()">upload</button>
    </div>
    </body>
    <script>
        function click_me() {
            alert(123);
            var formData = new FormData();
            formData.append('file', $('#file')[0].files[0]);
            formData.append('id', 321);
            $.ajax({
                url: '/car/upload/imgUpdate',
                type: 'POST',
                cache: false,
                data: formData,
                processData: false,
                contentType: false
            }).done(function(res) {
                console.log(res);
            }).fail(function(res) {});

        }
    </script>
</html>
