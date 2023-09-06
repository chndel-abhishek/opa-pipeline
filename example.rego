package kubernetes.admission
deny[msg] {
 input.request.kind.kind == "Deployment"
 image := input.request.object.spec.template.spec.containers[i].image
 startswith(image, "nginx")
 msg := sprintf(""Can't deploy image %v",[image])
}

