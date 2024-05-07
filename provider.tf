provider "google" {
  credentials = var.google_credentials
  region      = var.region
}
variable "google_credentials" {
  description = "Google Cloud Platform credentials"
  default = <<EOT

{
  "type": "service_account",
  "project_id": "aslah23",
  "private_key_id": "6f3d9f994191371e5d7f15acaeae61de5bc2bacf",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQCPheLQo9E1DQRW\nJIKiUEcrRRPbgSh5YKI+TuaUHVth1b8y8iie9BI7oHr7JHu51xfqd0KJjG8kiY9e\n75SYu9ZgszZVsxrdQ1t/OIc4Yf0O6NRUrwbwt/ngh+h47Vmxi7c3zq6UFeo55jh6\nXH8OeRRj5r1+gLGtl7PPADxAefoWzlTCRkN6JnDMnd9znaYd5pAI+HNgWnTycv5B\nDKSCA09NGCrWXvjStU9e8A51Z2bVHFv3sP9ombqF29ZqS1g1cK6GFRebxhy0Gfnq\nXGHMfh57K+v5pZVkGDd/nb4se3FxqWlPWAKjLm4M03ngdneua3Mo51A7+/DSCFlD\nDrRqKKxzAgMBAAECggEAGvxXFdi/dOSiLJpHz8IdZ5bg8XRbCltvlhyawT212XLp\ntOgQWDbXGMwHY6JL+zjkv8q1wYwct7d/tB+DBqbG277GmB2JjxHjqcuUrTbLcJq5\nlcSlHuzQuHWFcfta0oXNKNqdO63VMRbHBsbOgwekHFadyaPkBJpSDjlimtL0gYX5\nFep2gTe0/r0ll3cd11OK4wjYxOsAGskk7CCWWPFS9ztWa3XVNbHcNUm08BevQgZo\ncy806fYHWFS0wDLLWIWwEbKMhRez/hw6NVKIFTzZMewVx2e9uNKETqFw1qstFM+F\nUZtB9hvdbj4xnFUoJF8NF3tk7+ITpYE9YOkBexBcKQKBgQDCakOLeWj3UhF53VoS\nhO/sEZGvmxpJjUex6WOUA3/03EGECEzh0hkKoDXMXfbutB7QsUZLEZOBAklqEY66\nI+M8cpsLsz/xSVNMCDEhHj2zxiZvws3m6Oz4lcQX1ocEzUxg240ZiMfuzzdQbYSd\n8SRhx63hJ4dY+kt1WBTGk8ABqQKBgQC8/J7QO7H4nMsGzx7u95iTxUwylDH9d1JB\n5bg9uINq4g5TUH2rcHDZzXgdwp9x1GZgD6aQylj5vNOqWgN1lPbQhYoZ4GV9HmG/\nZVELWySEc72UKFn9eg1w+mnBlx2DHEj2MD244xnWIT/h45Ij/8DsqMYVFlMtCWci\nLW1zY2GGuwKBgAGLqLfOIkh9DYiDevjUt7ePuDHGMOJOzjga2+DMWlMPATJUgo/1\nBJ/yABt8z768Ddao4h8sp5iJ9R1zwEe4i1DqtFLWfPalF5VuJz3VKLZqJ9oRmWNx\njJi5UBLEcNRX8Xh/plKCpNxAJ3drN3et+BUS6k30632Il9r59UhS2l7pAoGAMRU3\nNgPbBCPMwxb2BMB/exmJ4bUFirv7vCuqfzU1xIOzjsXf7a/FT3wCz0/l002DzT0j\nWIWFOE9ndd3s+hPXSm70YCYclbNXVbs9okJoqJHa0ejs/l09snMHFoVl39BvzqjW\nzvcElc2K5uMQ6JKbC5wF3iIvNgo0I/dCbu6HvNMCgYA31U5oJd6zTxomU7s2zfpl\ntUHIQn8nGUmuxWFMQ0vE/IxJdE68KyeO9yl1GD9zKyuwi+hBEdav7dil0nKaLz2o\npC7+Eo7mlRa/u3wNSFyOtvjpWC2l7QXPM1DCmwqqF+w2YmCHIwIAlkExal5S4x8a\niQQ+tGSGB0/V+/XdGorQcw==\n-----END PRIVATE KEY-----\n",

  "client_email": "gcp-58@aslah23.iam.gserviceaccount.com",
  "client_id": "100855200499769543591",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/gcp-58%40aslah23.iam.gserviceaccount.com",
  "universe_domain": "googleapis.com"

}
EOT
}
