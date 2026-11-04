tok=$(cat ~/token.gh)
ids=$(cat liste-id.txt)

for id in $ids; do
	curl -L \
	-H "Accept: application/vnd.github+json" \
	-H "Authorization: Bearer $tok" \
	-H "X-Github-Api-Version: 2022-11-28" \
	--output artifact-$id.zip \
	https://api.github.com/repos/Leocqrl/tp-graphes/actions/artifacts/$id/zip
done
