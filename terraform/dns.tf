resource "cloudflare_record" "random" {
  zone_id = var.cf_zone_id
  name    = "random"
  proxied = true
  type = "CNAME"
  value = aws_s3_bucket_website_configuration.bucket_website_main.website_endpoint
}