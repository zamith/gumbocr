require "./gumbocr/*"

@[Link("gumbo")]
lib LibGumbo
  enum GumboTag
    GUMBO_TAG_HTML, GUMBO_TAG_HEAD, GUMBO_TAG_TITLE, GUMBO_TAG_BASE,
    GUMBO_TAG_LINK, GUMBO_TAG_META, GUMBO_TAG_STYLE, GUMBO_TAG_SCRIPT,
    GUMBO_TAG_NOSCRIPT, GUMBO_TAG_TEMPLATE, GUMBO_TAG_BODY, GUMBO_TAG_ARTICLE,
    GUMBO_TAG_SECTION, GUMBO_TAG_NAV, GUMBO_TAG_ASIDE, GUMBO_TAG_H1,
    GUMBO_TAG_H2, GUMBO_TAG_H3, GUMBO_TAG_H4, GUMBO_TAG_H5,
    GUMBO_TAG_H6, GUMBO_TAG_HGROUP, GUMBO_TAG_HEADER, GUMBO_TAG_FOOTER,
    GUMBO_TAG_ADDRESS, GUMBO_TAG_P, GUMBO_TAG_HR, GUMBO_TAG_PRE,
    GUMBO_TAG_BLOCKQUOTE, GUMBO_TAG_OL, GUMBO_TAG_UL, GUMBO_TAG_LI,
    GUMBO_TAG_DL, GUMBO_TAG_DT, GUMBO_TAG_DD, GUMBO_TAG_FIGURE,
    GUMBO_TAG_FIGCAPTION, GUMBO_TAG_MAIN, GUMBO_TAG_DIV, GUMBO_TAG_A,
    GUMBO_TAG_EM, GUMBO_TAG_STRONG, GUMBO_TAG_SMALL, GUMBO_TAG_S,
    GUMBO_TAG_CITE, GUMBO_TAG_Q, GUMBO_TAG_DFN, GUMBO_TAG_ABBR,
    GUMBO_TAG_DATA, GUMBO_TAG_TIME, GUMBO_TAG_CODE, GUMBO_TAG_VAR,
    GUMBO_TAG_SAMP, GUMBO_TAG_KBD, GUMBO_TAG_SUB, GUMBO_TAG_SUP,
    GUMBO_TAG_I, GUMBO_TAG_B, GUMBO_TAG_U, GUMBO_TAG_MARK,
    GUMBO_TAG_RUBY, GUMBO_TAG_RT, GUMBO_TAG_RP, GUMBO_TAG_BDI,
    GUMBO_TAG_BDO, GUMBO_TAG_SPAN, GUMBO_TAG_BR, GUMBO_TAG_WBR,
    GUMBO_TAG_INS, GUMBO_TAG_DEL, GUMBO_TAG_IMAGE, GUMBO_TAG_IMG,
    GUMBO_TAG_IFRAME, GUMBO_TAG_EMBED, GUMBO_TAG_OBJECT, GUMBO_TAG_PARAM,
    GUMBO_TAG_VIDEO, GUMBO_TAG_AUDIO, GUMBO_TAG_SOURCE, GUMBO_TAG_TRACK,
    GUMBO_TAG_CANVAS, GUMBO_TAG_MAP, GUMBO_TAG_AREA, GUMBO_TAG_MATH,
    GUMBO_TAG_MI, GUMBO_TAG_MO, GUMBO_TAG_MN, GUMBO_TAG_MS,
    GUMBO_TAG_MTEXT, GUMBO_TAG_MGLYPH, GUMBO_TAG_MALIGNMARK, GUMBO_TAG_ANNOTATION_XML,
    GUMBO_TAG_SVG, GUMBO_TAG_FOREIGNOBJECT, GUMBO_TAG_DESC, GUMBO_TAG_TABLE,
    GUMBO_TAG_CAPTION, GUMBO_TAG_COLGROUP, GUMBO_TAG_COL, GUMBO_TAG_TBODY,
    GUMBO_TAG_THEAD, GUMBO_TAG_TFOOT, GUMBO_TAG_TR, GUMBO_TAG_TD,
    GUMBO_TAG_TH, GUMBO_TAG_FORM, GUMBO_TAG_FIELDSET, GUMBO_TAG_LEGEND,
    GUMBO_TAG_LABEL, GUMBO_TAG_INPUT, GUMBO_TAG_BUTTON, GUMBO_TAG_SELECT,
    GUMBO_TAG_DATALIST, GUMBO_TAG_OPTGROUP, GUMBO_TAG_OPTION, GUMBO_TAG_TEXTAREA,
    GUMBO_TAG_KEYGEN, GUMBO_TAG_OUTPUT, GUMBO_TAG_PROGRESS, GUMBO_TAG_METER,
    GUMBO_TAG_DETAILS, GUMBO_TAG_SUMMARY, GUMBO_TAG_MENU, GUMBO_TAG_MENUITEM,
    GUMBO_TAG_APPLET, GUMBO_TAG_ACRONYM, GUMBO_TAG_BGSOUND, GUMBO_TAG_DIR,
    GUMBO_TAG_FRAME, GUMBO_TAG_FRAMESET, GUMBO_TAG_NOFRAMES, GUMBO_TAG_ISINDEX,
    GUMBO_TAG_LISTING, GUMBO_TAG_XMP, GUMBO_TAG_NEXTID, GUMBO_TAG_NOEMBED,
    GUMBO_TAG_PLAINTEXT, GUMBO_TAG_RB, GUMBO_TAG_STRIKE, GUMBO_TAG_BASEFONT,
    GUMBO_TAG_BIG, GUMBO_TAG_BLINK, GUMBO_TAG_CENTER, GUMBO_TAG_FONT,
    GUMBO_TAG_MARQUEE, GUMBO_TAG_MULTICOL, GUMBO_TAG_NOBR, GUMBO_TAG_SPACER,
    GUMBO_TAG_TT, GUMBO_TAG_RTC, GUMBO_TAG_UNKNOWN, GUMBO_TAG_LAST
  end

  struct GumboVector
    data: Void**
    length: Int32
    capacity: Int32
  end

  enum GumboNodeType
    GUMBO_NODE_DOCUMENT,
    GUMBO_NODE_ELEMENT,
    GUMBO_NODE_TEXT,
    GUMBO_NODE_CDATA,
    GUMBO_NODE_COMMENT,
    GUMBO_NODE_WHITESPACE,
    GUMBO_NODE_TEMPLATE
  end

  enum GumboParseFlags
    GUMBO_INSERTION_NORMAL,
    GUMBO_INSERTION_BY_PARSER,
    GUMBO_INSERTION_IMPLICIT_END_TAG,
    GUMBO_INSERTION_IMPLIED,
    GUMBO_INSERTION_CONVERTED_FROM_END_TAG,
    GUMBO_INSERTION_FROM_ISINDEX,
    GUMBO_INSERTION_FROM_IMAGE,
    GUMBO_INSERTION_RECONSTRUCTED_FORMATTING_ELEMENT,
    GUMBO_INSERTION_ADOPTION_AGENCY_CLONED,
    GUMBO_INSERTION_ADOPTION_AGENCY_MOVED,
    GUMBO_INSERTION_FOSTER_PARENTED
  end

  enum GumboQuirksModeEnum
    GUMBO_DOCTYPE_NO_QUIRKS,
    GUMBO_DOCTYPE_QUIRKS,
    GUMBO_DOCTYPE_LIMITED_QUIRKS
  end

  struct GumboDocument
    children: GumboVector
    has_doctype: Bool
    name: UInt8*
    public_identifier: UInt8*
    system_identifier: UInt8*
    doc_type_quirks_mode: GumboQuirksModeEnum
  end

  enum GumboNamespaceEnum
    GUMBO_INSERTION_NORMAL,
    GUMBO_INSERTION_BY_PARSER,
    GUMBO_INSERTION_IMPLICIT_END_TAG,
    GUMBO_INSERTION_IMPLIED,
    GUMBO_INSERTION_CONVERTED_FROM_END_TAG,
    GUMBO_INSERTION_FROM_ISINDEX,
    GUMBO_INSERTION_FROM_IMAGE,
    GUMBO_INSERTION_RECONSTRUCTED_FORMATTING_ELEMENT,
    GUMBO_INSERTION_ADOPTION_AGENCY_CLONED,
    GUMBO_INSERTION_ADOPTION_AGENCY_MOVED,
    GUMBO_INSERTION_FOSTER_PARENTED
  end

  struct GumboStringPiece
    data: UInt8*
    length: LibC::SizeT
  end

  struct GumboSourcePosition
    line: Int32
    column: Int32
    offset: Int32
  end

  enum GumboAttributeNamespaceEnum
    GUMBO_ATTR_NAMESPACE_NONE,
    GUMBO_ATTR_NAMESPACE_XLINK,
    GUMBO_ATTR_NAMESPACE_XML,
    GUMBO_ATTR_NAMESPACE_XMLNS
  end

  struct GumboAttribute
    attr_namespace: GumboAttributeNamespaceEnum
    name: UInt8*
    original_name: GumboStringPiece
    value: UInt8*
    original_value: GumboStringPiece
    name_start: GumboSourcePosition
    name_end: GumboSourcePosition
    value_start: GumboSourcePosition
    value_end: GumboSourcePosition
  end

  type GumboAllocatorFunction = Void*
  type GumboDeallocatorFunction = Void*

  struct GumboOptions
    allocator: GumboAllocatorFunction
    deallocator: GumboDeallocatorFunction
    userdata: Void*
    tab_stop: Int32
    stop_on_first_error: Bool
    max_errors: Int32
    fragment_context: GumboTag
    fragment_namespace: GumboNamespaceEnum
  end

  struct GumboElement
    children: GumboVector
    tag: GumboTag
    tag_namespace: GumboNamespaceEnum
    original_tag: GumboStringPiece
    original_end_tag: GumboStringPiece
    start_pos: GumboSourcePosition
    end_pos: GumboSourcePosition
    attributes: GumboVector
  end

  struct GumboText
    text: UInt8*
    original_text: GumboStringPiece
    start_pos: GumboSourcePosition
  end

  union Node
    document: GumboDocument
    element: GumboElement
    text: GumboText
  end

  struct GumboNode
    type: GumboNodeType
    parent: GumboNode*
    index_with_parent: LibC::SizeT
    parse_flags: GumboParseFlags
    v: Node
  end

  struct GumboOutput
    document: GumboNode*
    root: GumboNode*
    errors: GumboVector
  end

  fun gumbo_string_equals(str1: GumboStringPiece*, str2: GumboStringPiece*) : Bool
  fun gumbo_string_equals_ignore_case(str1: GumboStringPiece*, str2: GumboStringPiece*) : Bool
  fun gumbo_vector_index_of(vector: GumboVector*, element: Void*) : Int32
  fun gumbo_normalized_tagname(tag: GumboTag) : UInt8*
  fun gumbo_tag_from_original_text(text: GumboStringPiece*) : Void
  fun gumbo_normalize_svg_tag(tagname: GumboStringPiece*) : UInt8*
  fun gumbo_tag_enum(tagname: UInt8*) : GumboTag
  fun gumbo_tagn_enum(tagname: UInt8*, length: Int32) : GumboTag
  fun gumbo_get_attribute(attrs: GumboVector*, name: UInt8*) : GumboAttribute*
  fun gumbo_parse(buffer: UInt8*) : GumboOutput*
  fun gumbo_parse_with_options(options: GumboOptions*, buffer: UInt8*, buffer_length: LibC::SizeT)
  fun gumbo_destroy_output(options: GumboOptions*, output: GumboOutput*)
end
