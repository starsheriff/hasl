module TimeLogSpec where

import Test.Hspec
import qualified TimeLog

spec :: Spec
spec = do
  let a = TimeLog.Log "23" 
  describe "Foo" $ do
    it "test me" $ do
      "asdf" `shouldBe` "asdf"

  describe "Bar" $ do
    it "second test" $ do
      3 `shouldBe` 3
