cask "steve2-universal" do
  version "0.0.8"
  sha256 "56e43d0aaee8a4d002a3c247221b896f128bd9402dde0db6cfbbe3f8c962f3d2"
  url "https://github-releases.githubusercontent.com/325284147/f0a70800-5d74-11eb-96ca-43d594c9386a?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20210201%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20210201T004229Z&X-Amz-Expires=300&X-Amz-Signature=797f2b681c61af75a86596b2a877ae75328c61aa6167da72de6db3efa57e00d3&X-Amz-SignedHeaders=host&actor_id=3389538&key_id=0&repo_id=325284147&response-content-disposition=attachment%3B%20filename%3DPika-0.0.8.dmg&response-content-type=application%2Foctet-stream"
  name "Pika"
  desc "Pika (pronounced pi·kuh, like picker) is an easy to use, open-source, native colour picker for macOS. Pika makes it easy to quickly find colours onscreen, in the format you need, so you can get on with being a speedy, successful designer."
  homepage "https://github.com/trudnai/Steve2"
  
  app "Pika.app"
  
  zap trash: [
  ]
end
