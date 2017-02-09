# To deploy the website, setup your keys:
#
# 	sudo pip install awscli
# 	aws configure
#
# Then run:
# 	make deploy


deploy:
	aws s3 sync ../website s3://amsamborski.com \
		--exclude ".git/*"\
		--exclude ".gitignore"\
		--exclude "*.DS_STORE"\
		--exclude "Makefile"\
		--delete


