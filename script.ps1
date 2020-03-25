
$version = git describe --tags --abbrev=0 --tags 
if  ([version]::IsNullOrEmpty)
{
    $NEW_TAG="V1.0.0"
    echo "No tag present."
    echo "Creating tag: $NEW_TAG"
    git tag $NEW_TAG
    git push --tags -f
    echo "Tag created and pushed: $NEW_TAG"
  
}

