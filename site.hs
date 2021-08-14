--------------------------------------------------------------------------------
{-# LANGUAGE OverloadedStrings #-}
import           Data.Monoid (mappend)
import           Hakyll
import           Text.Pandoc.Options


--------------------------------------------------------------------------------
main :: IO ()
main = hakyll $ do
    match ("**.pdf" .||. "**.mp4" .||. "img/*") $ do
        route   idRoute
        compile copyFileCompiler

    match "css/*" $ do
        route   idRoute
        compile compressCssCompiler

    match "index.md" $ do
        route   $ setExtension "html"
        compile $ pandocCompiler_
            >>= loadAndApplyTemplate "templates/default.html" mainCtx

    match ("links.md" .||. "misc.md" .||. "talks/*.md" .||. "papers/*.md") $ do
        route   $ setExtension "html"
        compile $ pandocCompiler_
            >>= loadAndApplyTemplate "templates/default.html" postCtx

    match "teaching/cimat-tna/*.md" $ do
        route   $ setExtension "html"
        compile $ pandocCompiler_
            >>= loadAndApplyTemplate "templates/default.html" teachingTNACtx

    match "teaching/**.md" $ do
        route   $ setExtension "html"
        compile $ pandocCompiler_
            >>= loadAndApplyTemplate "templates/default.html" teachingCtx

    match "templates/*" $ compile templateBodyCompiler

--------------------------------------------------------------------------------
pandocCompiler_ :: Compiler (Item String)
pandocCompiler_ =
    let
    writerOptions =
        defaultHakyllWriterOptions
        { writerHTMLMathMethod = MathJax "" }
    in pandocCompilerWith defaultHakyllReaderOptions writerOptions

--------------------------------------------------------------------------------
postCtx :: Context String
postCtx =
    dateField "date" "%Y-%m-%d" `mappend`
    defaultContext

--------------------------------------------------------------------------------
teachingCtx :: Context String
teachingCtx =
    constField "teaching" "true" `mappend`
    postCtx

--------------------------------------------------------------------------------
teachingTNACtx :: Context String
teachingTNACtx =
    constField "tna" "true" `mappend`
    teachingCtx

--------------------------------------------------------------------------------
mainCtx :: Context String
mainCtx =
    constField "mainpage" "true" `mappend`
    postCtx
