install:
	npm install

lint:
	npx stylelint ./build/css/*.css
	npx stylelint ./src/styles/**/*.scss
	npx htmlhint ./build/*.html

fix-lint:
	npx stylelint --fix ./build/css/*.css
	npx stylelint --fix ./src/styles/**/*.scss

deploy:
	npx surge ./build/

compile:
	sass --watch src/styles/app.scss build/css/app.css

pug-version:
	npx pug --version

pug:
	npx pug src/index.pug --pretty -w -o ./build
