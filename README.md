## 前端測試
http://pgnini.org/kind-test/news.html

## 前端包
https://github.com/christinehuang/kindness


## 開發環境

```
ruby: 2.5.3
rails: 5.2.1
```

重新 bundle gem
 
```
bundle install
```

更新到 bundler 2
```
gem update --system
gem install bundler
bundler update --bundler
```
check bundle version
```
bundle -v
```

## 啟動



```
rails s
```


## 問題排除

如果有 upgrade mac os 可能會有xcode commendline 問題, 試著安裝
解決方式是在命令列下xcode-select --install後下載完就可以使用了

```
xcrun: error: 
invalid active developer path (/Library/Developer/CommandLineTools), 
missing xcrun at: /Library/Developer/CommandLineTools/usr/bin/xcrun
```

更新 ruby

```
rvm install 2.5.3

```

安裝 imagemagick、ImageOptimizer 所需套件
```
sudo apt-get install imagemagick optipng jpegoptim

nginx 上傳限制設定
client_max_body_size 100M;
```
 
  

## 佈署

網址：http://kindness.pgnini.asia

dbname：kindness_ching / app / chinyu08190328

> ssh app@66.42.60.142 / chinyu08190328

> ssh fhshpgnini@210.60.161.47 / chinyu08190328 


**佈署方式**

# 測試機
> mina deploy

#正式機
> mina production deploy
> 198.13.49.114

# 遠端上 rails c
> bundle exec rails console production
## 更新 Bower 套件

> rake bower:update


