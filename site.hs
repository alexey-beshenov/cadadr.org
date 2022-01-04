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

    match ("links.md") $ do
        route   $ setExtension "html"
        compile $ pandocCompiler_
            >>= loadAndApplyTemplate "templates/default.html" postCtx

    match ("misc.md") $ do
        route   $ setExtension "html"
        compile $ pandocCompiler_
            >>= loadAndApplyTemplate "templates/default.html" miscCtx

    match ("talks/index.md") $ do
        route   $ setExtension "html"
        compile $ pandocCompiler_
            >>= loadAndApplyTemplate "templates/default.html" talksCtx

    match ("papers/index.md") $ do
        route   $ setExtension "html"
        compile $ pandocCompiler_
            >>= loadAndApplyTemplate "templates/default.html" papersCtx

    match "teaching/cimat-tna/*.md" $ do
        route   $ setExtension "html"
        compile $ pandocCompiler_
            >>= loadAndApplyTemplate "templates/default.html" teachingTNACtx

    match "teaching/index.md" $ do
        route   $ setExtension "html"
        compile $ pandocCompiler_
            >>= loadAndApplyTemplate "templates/default.html" teachingMainCtx

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
papersCtx :: Context String
papersCtx =
    constField "papers" "true" `mappend`
    postCtx

--------------------------------------------------------------------------------
talksCtx :: Context String
talksCtx =
    constField "talks" "true" `mappend`
    postCtx

--------------------------------------------------------------------------------
teachingMainCtx :: Context String
teachingMainCtx =
    constField "teachingMain" "true" `mappend`
    teachingCtx

--------------------------------------------------------------------------------
teachingCtx :: Context String
teachingCtx =
    constField "teaching" "true" `mappend`
    postCtx

--------------------------------------------------------------------------------
miscCtx :: Context String
miscCtx =
    constField "misc" "true" `mappend`
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
