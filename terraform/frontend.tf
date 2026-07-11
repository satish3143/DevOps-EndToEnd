resource "kubernetes_deployment" "frontend" {

  metadata {
    name      = "frontend"
    namespace = kubernetes_namespace.devops.metadata[0].name

    labels = {
      app = "frontend"
    }
  }


  spec {

    replicas = 2


    selector {
      match_labels = {
        app = "frontend"
      }
    }


    template {

      metadata {

        labels = {
          app = "frontend"
        }

      }


      spec {

        container {

          name = "frontend"

          image = "s7edgedocker/devops-frontend:latest"
          
          image_pull_policy = "Always"

          port {

            container_port = 3000

          }

        }

      }

    }

  }

}