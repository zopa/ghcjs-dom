{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLCanvasElement
       (ghcjs_dom_html_canvas_element_to_data_url,
        htmlCanvasElementToDataURL,
        ghcjs_dom_html_canvas_element_get_context,
        htmlCanvasElementGetContext,
        ghcjs_dom_html_canvas_element_probably_supports_context,
        htmlCanvasElementProbablySupportsContext,
        ghcjs_dom_html_canvas_element_set_width, htmlCanvasElementSetWidth,
        ghcjs_dom_html_canvas_element_get_width, htmlCanvasElementGetWidth,
        ghcjs_dom_html_canvas_element_set_height,
        htmlCanvasElementSetHeight,
        ghcjs_dom_html_canvas_element_get_height,
        htmlCanvasElementGetHeight, HTMLCanvasElement, IsHTMLCanvasElement,
        castToHTMLCanvasElement, gTypeHTMLCanvasElement,
        toHTMLCanvasElement)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"toDataURL\"]($2)"
        ghcjs_dom_html_canvas_element_to_data_url ::
        JSRef HTMLCanvasElement -> JSString -> IO JSString
 
htmlCanvasElementToDataURL ::
                           (IsHTMLCanvasElement self, ToJSString type',
                            FromJSString result) =>
                             self -> type' -> IO result
htmlCanvasElementToDataURL self type'
  = fromJSString <$>
      (ghcjs_dom_html_canvas_element_to_data_url
         (unHTMLCanvasElement (toHTMLCanvasElement self))
         (toJSString type'))
 
foreign import javascript unsafe "$1[\"getContext\"]($2)"
        ghcjs_dom_html_canvas_element_get_context ::
        JSRef HTMLCanvasElement -> JSString -> IO (JSRef a)
 
htmlCanvasElementGetContext ::
                            (IsHTMLCanvasElement self, ToJSString contextId) =>
                              self -> contextId -> IO (JSRef a)
htmlCanvasElementGetContext self contextId
  = ghcjs_dom_html_canvas_element_get_context
      (unHTMLCanvasElement (toHTMLCanvasElement self))
      (toJSString contextId)
 
foreign import javascript unsafe
        "$1[\"probablySupportsContext\"]($2)"
        ghcjs_dom_html_canvas_element_probably_supports_context ::
        JSRef HTMLCanvasElement -> JSString -> IO (JSRef a)
 
htmlCanvasElementProbablySupportsContext ::
                                         (IsHTMLCanvasElement self, ToJSString contextId) =>
                                           self -> contextId -> IO (JSRef a)
htmlCanvasElementProbablySupportsContext self contextId
  = ghcjs_dom_html_canvas_element_probably_supports_context
      (unHTMLCanvasElement (toHTMLCanvasElement self))
      (toJSString contextId)
 
foreign import javascript unsafe "$1[\"width\"] = $2;"
        ghcjs_dom_html_canvas_element_set_width ::
        JSRef HTMLCanvasElement -> Int -> IO ()
 
htmlCanvasElementSetWidth ::
                          (IsHTMLCanvasElement self) => self -> Int -> IO ()
htmlCanvasElementSetWidth self val
  = ghcjs_dom_html_canvas_element_set_width
      (unHTMLCanvasElement (toHTMLCanvasElement self))
      val
 
foreign import javascript unsafe "$1[\"width\"]"
        ghcjs_dom_html_canvas_element_get_width ::
        JSRef HTMLCanvasElement -> IO Int
 
htmlCanvasElementGetWidth ::
                          (IsHTMLCanvasElement self) => self -> IO Int
htmlCanvasElementGetWidth self
  = ghcjs_dom_html_canvas_element_get_width
      (unHTMLCanvasElement (toHTMLCanvasElement self))
 
foreign import javascript unsafe "$1[\"height\"] = $2;"
        ghcjs_dom_html_canvas_element_set_height ::
        JSRef HTMLCanvasElement -> Int -> IO ()
 
htmlCanvasElementSetHeight ::
                           (IsHTMLCanvasElement self) => self -> Int -> IO ()
htmlCanvasElementSetHeight self val
  = ghcjs_dom_html_canvas_element_set_height
      (unHTMLCanvasElement (toHTMLCanvasElement self))
      val
 
foreign import javascript unsafe "$1[\"height\"]"
        ghcjs_dom_html_canvas_element_get_height ::
        JSRef HTMLCanvasElement -> IO Int
 
htmlCanvasElementGetHeight ::
                           (IsHTMLCanvasElement self) => self -> IO Int
htmlCanvasElementGetHeight self
  = ghcjs_dom_html_canvas_element_get_height
      (unHTMLCanvasElement (toHTMLCanvasElement self))
#else
module GHCJS.DOM.HTMLCanvasElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLCanvasElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLCanvasElement
#endif
