.PHONY: k8s-patch
k8s-patch: 
	kubectl -n tutor rollout restart deployment tutor  
