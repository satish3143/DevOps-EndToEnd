resource "kubernetes_namespace" "devops" {

  metadata {

    name = "devops-app"

  }

}