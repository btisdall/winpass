IMAGE = winpass:latest

.PHONY: image

image:
	docker build -t ${IMAGE} .

.PHONY: changepass

changepass:
	@if [ -z "${WIN_USER}" ]; then echo "WIN_USER unset"; false; fi
	@if [ -z "${WIN_DC}" ]; then echo "WIN_DC unset"; false; fi
	@docker run -it ${IMAGE} smbpasswd -r ${WIN_DC} -U ${WIN_USER}

