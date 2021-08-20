# pocket-retrieve-action

A GitHub action to retrieve articles via the [Pocket API](https://getpocket.com/developer/)

This action requires a consumer key and an access token.
You can get a **consumer key** by [registering a new application](https://getpocket.com/developer/apps/new).
The **access token** can be obtained by following the [documented auth flow](https://getpocket.com/developer/docs/authentication) or using a 3rd party app like [mheap/pocket-auth-cli](https://github.com/mheap/pocket-auth-cli).

As always it is highly recommended to store them as secrets.

## Inputs

## `consumerKey`

**Required** The consumer key from Pockets developer portal.

## `accessToken`

**Required** The access token retrieved upon authorization.

## `fileName`

The output filename for the retrieved articles.
Default: `'articles.json'`
## Example usage

```yaml
uses: olithissen/pocket-retrieve-action@v1
with:
  consumerKey: ${{ secrets.CONSUMER_KEY }}
  accessToken: ${{ secrets.ACCESS_TOKEN }}
  fileName: articles.json
```  

## A word on filtering

If you are familiar with Pocket's API you might notice that this action is missing all the filters like `state`, `tag`, `favorite` and so on.
While some might be added in a future version it felt like clogging up the input section of this action. 
It is recommended to add a post-processing step to do filtering, sorting and mapping.