install:
	npm install

lint:
	npx stylelint ./src/styles/*.css
	npx stylelint ./src/styles/**/*.scss
	npx htmlhint ./src/*.html

fix-lint:
	npx stylelint --fix ./src/styles/*.css
	npx stylelint --fix ./src/styles/**/*.scss

deploy:
	npx surge ./src/

compile:
	sass --watch src/styles/app.scss src/styles/app.css

pug-version:
	npx pug --version

pug:
	npx pug src/index.pug --pretty
