.PHONY: release changelog commit

commit:
	npm run cz

changelog:
	npm run changelog

release:
	npm run changelog
	npm run release
	git push --follow-tags origin main