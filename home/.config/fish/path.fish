set -x PATH $GOPATH/bin $PATH

# Google Cloud SDK.
if test -f "$HOME/google-cloud-sdk/path.fish.inc"
  source "$HOME/google-cloud-sdk/path.fish.inc"
end
