ROOT_DIR:=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

php73.zip:
	docker run --rm -e http_proxy=${http_proxy} -v $(ROOT_DIR):/opt/layer lambci/lambda:build-nodejs8.10 /opt/layer/build-php-remi.sh 3

clean:
	rm -f php71.zip php73.zip

