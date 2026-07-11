resource "kubernetes_service" "backend" {


  metadata {

    name = "backend-service"

    namespace = kubernetes_namespace.devops.metadata[0].name

  }


  spec {


    selector = {

      app = "backend"

    }


    port {

      port = 3000

      target_port = 3000

    }


    type = "ClusterIP"

  }

}



resource "kubernetes_service" "frontend" {


  metadata {

    name = "frontend-service"

    namespace = kubernetes_namespace.devops.metadata[0].name

  }


  spec {


    selector = {

      app = "frontend"

    }


    port {

      port = 3001

      target_port = 3000

    }


    type = "NodePort"

  }

}