npm install bootstrap
npm install bootstrap-icons

echo '<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./public/css/app.css">
    <title>Document</title>
</head>
<body>
    


    <script src="../node_modules/bootstrap/dist/js/bootstrap.js"></script>
</body>
</html>' > index.html


mkdir -p public/css
mkdir -p public/img
touch public/css/app.css
mkdir -p src/sass/modules
touch src/sass/modules/_style.sass
touch src/sass/_variables.sass


echo '@import ./_variables
@import ../../node_modules/bootstrap/scss/bootstrap.scss
@import ../../node_modules/bootstrap-icons/font/bootstrap-icons.css
@import ./modules/_style' > src/sass/app.sass


sass --watch src/sass/app.sass:public/css/app.css
