tok=$(cat ~/token.gh)

curl -L \
	-H "Accept: application/vnd.github+json" \
	-H "Authorization: Bearer $tok" \
	-H "X-Github-Api-Version: 2022-11-28" \
	https://api.github.com/repos/Leocqrl/tp-graphes/actions/artifacts \
	> gh-artifacts.json


curl -L \
	-H "Accept: application/vnd.github+json" \
	-H "Authorization: Bearer $tok" \
	-H "X-Github-Api-Version: 2022-11-28" \
	--output artifact.zip \
	https://api.github.com/repos/Leocqrl/tp-graphes/actions/artifacts/11883340795/zip

unzip artifact.zip
