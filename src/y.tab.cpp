/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison implementation for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2021 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* C LALR(1) parser skeleton written by Richard Stallman, by
   simplifying the original so-called "semantic" parser.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Identify Bison output, and Bison version.  */
#define YYBISON 30802

/* Bison version string.  */
#define YYBISON_VERSION "3.8.2"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 0

/* Push parsers.  */
#define YYPUSH 0

/* Pull parsers.  */
#define YYPULL 1




/* First part of user prologue.  */
#line 1 "parser.yacc"

#include <stdio.h>
#include "TeaplAst.h"

extern A_pos pos;
extern A_program root;

extern int yylex(void);
extern "C"{
extern void yyerror(char *s); 
extern int  yywrap();
}


#line 86 "y.tab.cpp"

# ifndef YY_CAST
#  ifdef __cplusplus
#   define YY_CAST(Type, Val) static_cast<Type> (Val)
#   define YY_REINTERPRET_CAST(Type, Val) reinterpret_cast<Type> (Val)
#  else
#   define YY_CAST(Type, Val) ((Type) (Val))
#   define YY_REINTERPRET_CAST(Type, Val) ((Type) (Val))
#  endif
# endif
# ifndef YY_NULLPTR
#  if defined __cplusplus
#   if 201103L <= __cplusplus
#    define YY_NULLPTR nullptr
#   else
#    define YY_NULLPTR 0
#   endif
#  else
#   define YY_NULLPTR ((void*)0)
#  endif
# endif

#include "y.tab.hpp"
/* Symbol kind.  */
enum yysymbol_kind_t
{
  YYSYMBOL_YYEMPTY = -2,
  YYSYMBOL_YYEOF = 0,                      /* "end of file"  */
  YYSYMBOL_YYerror = 1,                    /* error  */
  YYSYMBOL_YYUNDEF = 2,                    /* "invalid token"  */
  YYSYMBOL_NUM = 3,                        /* NUM  */
  YYSYMBOL_ID = 4,                         /* ID  */
  YYSYMBOL_LET = 5,                        /* LET  */
  YYSYMBOL_INT = 6,                        /* INT  */
  YYSYMBOL_STRUCT = 7,                     /* STRUCT  */
  YYSYMBOL_FN = 8,                         /* FN  */
  YYSYMBOL_RET = 9,                        /* RET  */
  YYSYMBOL_IF = 10,                        /* IF  */
  YYSYMBOL_ELSE = 11,                      /* ELSE  */
  YYSYMBOL_WHILE = 12,                     /* WHILE  */
  YYSYMBOL_BREAK = 13,                     /* BREAK  */
  YYSYMBOL_CONTINUE = 14,                  /* CONTINUE  */
  YYSYMBOL_ADD = 15,                       /* ADD  */
  YYSYMBOL_SUB = 16,                       /* SUB  */
  YYSYMBOL_MUL = 17,                       /* MUL  */
  YYSYMBOL_DIV = 18,                       /* DIV  */
  YYSYMBOL_AND = 19,                       /* AND  */
  YYSYMBOL_OR = 20,                        /* OR  */
  YYSYMBOL_NOT = 21,                       /* NOT  */
  YYSYMBOL_GT = 22,                        /* GT  */
  YYSYMBOL_LT = 23,                        /* LT  */
  YYSYMBOL_GE = 24,                        /* GE  */
  YYSYMBOL_LE = 25,                        /* LE  */
  YYSYMBOL_EQ = 26,                        /* EQ  */
  YYSYMBOL_NE = 27,                        /* NE  */
  YYSYMBOL_ASS = 28,                       /* ASS  */
  YYSYMBOL_LPAREN = 29,                    /* LPAREN  */
  YYSYMBOL_RPAREN = 30,                    /* RPAREN  */
  YYSYMBOL_LBRACKET = 31,                  /* LBRACKET  */
  YYSYMBOL_RBRACKET = 32,                  /* RBRACKET  */
  YYSYMBOL_DOT = 33,                       /* DOT  */
  YYSYMBOL_COMMA = 34,                     /* COMMA  */
  YYSYMBOL_LBRACE = 35,                    /* LBRACE  */
  YYSYMBOL_RBRACE = 36,                    /* RBRACE  */
  YYSYMBOL_COLON = 37,                     /* COLON  */
  YYSYMBOL_POINT = 38,                     /* POINT  */
  YYSYMBOL_SEMICOLON = 39,                 /* SEMICOLON  */
  YYSYMBOL_YYACCEPT = 40,                  /* $accept  */
  YYSYMBOL_Program = 41,                   /* Program  */
  YYSYMBOL_ProgramElementList = 42,        /* ProgramElementList  */
  YYSYMBOL_ProgramElement = 43,            /* ProgramElement  */
  YYSYMBOL_StructDef = 44,                 /* StructDef  */
  YYSYMBOL_Type = 45,                      /* Type  */
  YYSYMBOL_ArithExpr = 46,                 /* ArithExpr  */
  YYSYMBOL_ExprUnit = 47,                  /* ExprUnit  */
  YYSYMBOL_BoolExpr = 48,                  /* BoolExpr  */
  YYSYMBOL_BoolUnit = 49,                  /* BoolUnit  */
  YYSYMBOL_AssignStmt = 50,                /* AssignStmt  */
  YYSYMBOL_LeftVal = 51,                   /* LeftVal  */
  YYSYMBOL_RightValList = 52,              /* RightValList  */
  YYSYMBOL_RightVal = 53,                  /* RightVal  */
  YYSYMBOL_FnCall = 54,                    /* FnCall  */
  YYSYMBOL_VarDeclStmt = 55,               /* VarDeclStmt  */
  YYSYMBOL_VarDeclList = 56,               /* VarDeclList  */
  YYSYMBOL_VarDecl = 57,                   /* VarDecl  */
  YYSYMBOL_VarDef = 58,                    /* VarDef  */
  YYSYMBOL_FnDef = 59,                     /* FnDef  */
  YYSYMBOL_FnDeclStmt = 60,                /* FnDeclStmt  */
  YYSYMBOL_ParamDecl = 61,                 /* ParamDecl  */
  YYSYMBOL_FnDecl = 62,                    /* FnDecl  */
  YYSYMBOL_CodeBlockStmtList = 63,         /* CodeBlockStmtList  */
  YYSYMBOL_CodeBlockStmt = 64,             /* CodeBlockStmt  */
  YYSYMBOL_ReturnStmt = 65,                /* ReturnStmt  */
  YYSYMBOL_CallStmt = 66,                  /* CallStmt  */
  YYSYMBOL_IfStmt = 67,                    /* IfStmt  */
  YYSYMBOL_WhileStmt = 68                  /* WhileStmt  */
};
typedef enum yysymbol_kind_t yysymbol_kind_t;




#ifdef short
# undef short
#endif

/* On compilers that do not define __PTRDIFF_MAX__ etc., make sure
   <limits.h> and (if available) <stdint.h> are included
   so that the code can choose integer types of a good width.  */

#ifndef __PTRDIFF_MAX__
# include <limits.h> /* INFRINGES ON USER NAME SPACE */
# if defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stdint.h> /* INFRINGES ON USER NAME SPACE */
#  define YY_STDINT_H
# endif
#endif

/* Narrow types that promote to a signed type and that can represent a
   signed or unsigned integer of at least N bits.  In tables they can
   save space and decrease cache pressure.  Promoting to a signed type
   helps avoid bugs in integer arithmetic.  */

#ifdef __INT_LEAST8_MAX__
typedef __INT_LEAST8_TYPE__ yytype_int8;
#elif defined YY_STDINT_H
typedef int_least8_t yytype_int8;
#else
typedef signed char yytype_int8;
#endif

#ifdef __INT_LEAST16_MAX__
typedef __INT_LEAST16_TYPE__ yytype_int16;
#elif defined YY_STDINT_H
typedef int_least16_t yytype_int16;
#else
typedef short yytype_int16;
#endif

/* Work around bug in HP-UX 11.23, which defines these macros
   incorrectly for preprocessor constants.  This workaround can likely
   be removed in 2023, as HPE has promised support for HP-UX 11.23
   (aka HP-UX 11i v2) only through the end of 2022; see Table 2 of
   <https://h20195.www2.hpe.com/V2/getpdf.aspx/4AA4-7673ENW.pdf>.  */
#ifdef __hpux
# undef UINT_LEAST8_MAX
# undef UINT_LEAST16_MAX
# define UINT_LEAST8_MAX 255
# define UINT_LEAST16_MAX 65535
#endif

#if defined __UINT_LEAST8_MAX__ && __UINT_LEAST8_MAX__ <= __INT_MAX__
typedef __UINT_LEAST8_TYPE__ yytype_uint8;
#elif (!defined __UINT_LEAST8_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST8_MAX <= INT_MAX)
typedef uint_least8_t yytype_uint8;
#elif !defined __UINT_LEAST8_MAX__ && UCHAR_MAX <= INT_MAX
typedef unsigned char yytype_uint8;
#else
typedef short yytype_uint8;
#endif

#if defined __UINT_LEAST16_MAX__ && __UINT_LEAST16_MAX__ <= __INT_MAX__
typedef __UINT_LEAST16_TYPE__ yytype_uint16;
#elif (!defined __UINT_LEAST16_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST16_MAX <= INT_MAX)
typedef uint_least16_t yytype_uint16;
#elif !defined __UINT_LEAST16_MAX__ && USHRT_MAX <= INT_MAX
typedef unsigned short yytype_uint16;
#else
typedef int yytype_uint16;
#endif

#ifndef YYPTRDIFF_T
# if defined __PTRDIFF_TYPE__ && defined __PTRDIFF_MAX__
#  define YYPTRDIFF_T __PTRDIFF_TYPE__
#  define YYPTRDIFF_MAXIMUM __PTRDIFF_MAX__
# elif defined PTRDIFF_MAX
#  ifndef ptrdiff_t
#   include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  endif
#  define YYPTRDIFF_T ptrdiff_t
#  define YYPTRDIFF_MAXIMUM PTRDIFF_MAX
# else
#  define YYPTRDIFF_T long
#  define YYPTRDIFF_MAXIMUM LONG_MAX
# endif
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned
# endif
#endif

#define YYSIZE_MAXIMUM                                  \
  YY_CAST (YYPTRDIFF_T,                                 \
           (YYPTRDIFF_MAXIMUM < YY_CAST (YYSIZE_T, -1)  \
            ? YYPTRDIFF_MAXIMUM                         \
            : YY_CAST (YYSIZE_T, -1)))

#define YYSIZEOF(X) YY_CAST (YYPTRDIFF_T, sizeof (X))


/* Stored state numbers (used for stacks). */
typedef yytype_uint8 yy_state_t;

/* State numbers in computations.  */
typedef int yy_state_fast_t;

#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(Msgid) dgettext ("bison-runtime", Msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(Msgid) Msgid
# endif
#endif


#ifndef YY_ATTRIBUTE_PURE
# if defined __GNUC__ && 2 < __GNUC__ + (96 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_PURE __attribute__ ((__pure__))
# else
#  define YY_ATTRIBUTE_PURE
# endif
#endif

#ifndef YY_ATTRIBUTE_UNUSED
# if defined __GNUC__ && 2 < __GNUC__ + (7 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_UNUSED __attribute__ ((__unused__))
# else
#  define YY_ATTRIBUTE_UNUSED
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YY_USE(E) ((void) (E))
#else
# define YY_USE(E) /* empty */
#endif

/* Suppress an incorrect diagnostic about yylval being uninitialized.  */
#if defined __GNUC__ && ! defined __ICC && 406 <= __GNUC__ * 100 + __GNUC_MINOR__
# if __GNUC__ * 100 + __GNUC_MINOR__ < 407
#  define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN                           \
    _Pragma ("GCC diagnostic push")                                     \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")
# else
#  define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN                           \
    _Pragma ("GCC diagnostic push")                                     \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")              \
    _Pragma ("GCC diagnostic ignored \"-Wmaybe-uninitialized\"")
# endif
# define YY_IGNORE_MAYBE_UNINITIALIZED_END      \
    _Pragma ("GCC diagnostic pop")
#else
# define YY_INITIAL_VALUE(Value) Value
#endif
#ifndef YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_END
#endif
#ifndef YY_INITIAL_VALUE
# define YY_INITIAL_VALUE(Value) /* Nothing. */
#endif

#if defined __cplusplus && defined __GNUC__ && ! defined __ICC && 6 <= __GNUC__
# define YY_IGNORE_USELESS_CAST_BEGIN                          \
    _Pragma ("GCC diagnostic push")                            \
    _Pragma ("GCC diagnostic ignored \"-Wuseless-cast\"")
# define YY_IGNORE_USELESS_CAST_END            \
    _Pragma ("GCC diagnostic pop")
#endif
#ifndef YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_END
#endif


#define YY_ASSERT(E) ((void) (0 && (E)))

#if !defined yyoverflow

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_USE_ALLOCA
#  if YYSTACK_USE_ALLOCA
#   ifdef __GNUC__
#    define YYSTACK_ALLOC __builtin_alloca
#   elif defined __BUILTIN_VA_ARG_INCR
#    include <alloca.h> /* INFRINGES ON USER NAME SPACE */
#   elif defined _AIX
#    define YYSTACK_ALLOC __alloca
#   elif defined _MSC_VER
#    include <malloc.h> /* INFRINGES ON USER NAME SPACE */
#    define alloca _alloca
#   else
#    define YYSTACK_ALLOC alloca
#    if ! defined _ALLOCA_H && ! defined EXIT_SUCCESS
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
      /* Use EXIT_SUCCESS as a witness for stdlib.h.  */
#     ifndef EXIT_SUCCESS
#      define EXIT_SUCCESS 0
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's 'empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (0)
#  ifndef YYSTACK_ALLOC_MAXIMUM
    /* The OS might guarantee only one guard page at the bottom of the stack,
       and a page size can be as small as 4096 bytes.  So we cannot safely
       invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
       to allow for a few compiler-allocated temporary stack slots.  */
#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2006 */
#  endif
# else
#  define YYSTACK_ALLOC YYMALLOC
#  define YYSTACK_FREE YYFREE
#  ifndef YYSTACK_ALLOC_MAXIMUM
#   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
#  endif
#  if (defined __cplusplus && ! defined EXIT_SUCCESS \
       && ! ((defined YYMALLOC || defined malloc) \
             && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef EXIT_SUCCESS
#    define EXIT_SUCCESS 0
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined EXIT_SUCCESS
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined EXIT_SUCCESS
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* !defined yyoverflow */

#if (! defined yyoverflow \
     && (! defined __cplusplus \
         || (defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yy_state_t yyss_alloc;
  YYSTYPE yyvs_alloc;
};

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (YYSIZEOF (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (YYSIZEOF (yy_state_t) + YYSIZEOF (YYSTYPE)) \
      + YYSTACK_GAP_MAXIMUM)

# define YYCOPY_NEEDED 1

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack_alloc, Stack)                           \
    do                                                                  \
      {                                                                 \
        YYPTRDIFF_T yynewbytes;                                         \
        YYCOPY (&yyptr->Stack_alloc, Stack, yysize);                    \
        Stack = &yyptr->Stack_alloc;                                    \
        yynewbytes = yystacksize * YYSIZEOF (*Stack) + YYSTACK_GAP_MAXIMUM; \
        yyptr += yynewbytes / YYSIZEOF (*yyptr);                        \
      }                                                                 \
    while (0)

#endif

#if defined YYCOPY_NEEDED && YYCOPY_NEEDED
/* Copy COUNT objects from SRC to DST.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(Dst, Src, Count) \
      __builtin_memcpy (Dst, Src, YY_CAST (YYSIZE_T, (Count)) * sizeof (*(Src)))
#  else
#   define YYCOPY(Dst, Src, Count)              \
      do                                        \
        {                                       \
          YYPTRDIFF_T yyi;                      \
          for (yyi = 0; yyi < (Count); yyi++)   \
            (Dst)[yyi] = (Src)[yyi];            \
        }                                       \
      while (0)
#  endif
# endif
#endif /* !YYCOPY_NEEDED */

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  18
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   194

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  40
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  29
/* YYNRULES -- Number of rules.  */
#define YYNRULES  82
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  173

/* YYMAXUTOK -- Last valid token kind.  */
#define YYMAXUTOK   294


/* YYTRANSLATE(TOKEN-NUM) -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex, with out-of-bounds checking.  */
#define YYTRANSLATE(YYX)                                \
  (0 <= (YYX) && (YYX) <= YYMAXUTOK                     \
   ? YY_CAST (yysymbol_kind_t, yytranslate[YYX])        \
   : YYSYMBOL_YYUNDEF)

/* YYTRANSLATE[TOKEN-NUM] -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex.  */
static const yytype_int8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
      35,    36,    37,    38,    39
};

#if YYDEBUG
/* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_int16 yyrline[] =
{
       0,   148,   148,   155,   160,   165,   169,   173,   177,   181,
     188,   194,   198,   205,   209,   213,   217,   221,   228,   232,
     236,   241,   245,   249,   253,   257,   264,   268,   272,   279,
     283,   287,   291,   295,   299,   303,   307,   315,   322,   326,
     330,   334,   341,   345,   350,   356,   360,   367,   374,   378,
     385,   389,   394,   400,   404,   408,   413,   420,   424,   428,
     432,   440,   447,   453,   459,   463,   472,   477,   483,   487,
     491,   495,   499,   503,   507,   511,   515,   522,   526,   533,
     540,   544,   555
};
#endif

/** Accessing symbol of state STATE.  */
#define YY_ACCESSING_SYMBOL(State) YY_CAST (yysymbol_kind_t, yystos[State])

#if YYDEBUG || 0
/* The user-facing name of the symbol whose (internal) number is
   YYSYMBOL.  No bounds checking.  */
static const char *yysymbol_name (yysymbol_kind_t yysymbol) YY_ATTRIBUTE_UNUSED;

/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "\"end of file\"", "error", "\"invalid token\"", "NUM", "ID", "LET",
  "INT", "STRUCT", "FN", "RET", "IF", "ELSE", "WHILE", "BREAK", "CONTINUE",
  "ADD", "SUB", "MUL", "DIV", "AND", "OR", "NOT", "GT", "LT", "GE", "LE",
  "EQ", "NE", "ASS", "LPAREN", "RPAREN", "LBRACKET", "RBRACKET", "DOT",
  "COMMA", "LBRACE", "RBRACE", "COLON", "POINT", "SEMICOLON", "$accept",
  "Program", "ProgramElementList", "ProgramElement", "StructDef", "Type",
  "ArithExpr", "ExprUnit", "BoolExpr", "BoolUnit", "AssignStmt", "LeftVal",
  "RightValList", "RightVal", "FnCall", "VarDeclStmt", "VarDeclList",
  "VarDecl", "VarDef", "FnDef", "FnDeclStmt", "ParamDecl", "FnDecl",
  "CodeBlockStmtList", "CodeBlockStmt", "ReturnStmt", "CallStmt", "IfStmt",
  "WhileStmt", YY_NULLPTR
};

static const char *
yysymbol_name (yysymbol_kind_t yysymbol)
{
  return yytname[yysymbol];
}
#endif

#define YYPACT_NINF (-135)

#define yypact_value_is_default(Yyn) \
  ((Yyn) == YYPACT_NINF)

#define YYTABLE_NINF (-42)

#define yytable_value_is_error(Yyn) \
  0

/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
   STATE-NUM.  */
static const yytype_int16 yypact[] =
{
      51,    35,    85,   102,  -135,    87,  -135,    51,  -135,  -135,
    -135,  -135,    73,    49,    61,    89,   105,    97,  -135,  -135,
       5,  -135,    75,   111,    56,  -135,  -135,   144,   144,   120,
      72,   122,   124,   115,   117,  -135,  -135,    96,   118,  -135,
     119,     5,  -135,  -135,  -135,  -135,  -135,    -9,    81,    75,
      75,   116,    95,   123,  -135,     7,  -135,  -135,   126,  -135,
    -135,   131,   -25,   125,   128,  -135,   130,    75,  -135,   127,
      75,    75,  -135,  -135,    75,    91,   159,  -135,  -135,  -135,
      81,  -135,    95,  -135,    15,    16,    81,    81,    81,    81,
      81,    81,    81,    81,    81,    81,    75,    75,   141,   160,
      55,    75,   162,    56,  -135,   144,   132,   137,   134,  -135,
      79,    83,   133,   139,   142,  -135,  -135,  -135,  -135,   129,
     129,  -135,  -135,  -135,  -135,  -135,  -135,  -135,  -135,  -135,
     150,   143,   145,    74,   138,    56,  -135,   146,  -135,  -135,
      56,  -135,    75,   147,   148,  -135,  -135,  -135,    92,   108,
      75,   151,   149,  -135,  -135,     5,     5,   140,   152,    56,
     153,   154,  -135,    75,  -135,   169,  -135,   155,   157,  -135,
       5,   158,  -135
};

/* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
   Performed when YYTABLE does not specify something else to do.  Zero
   means the default is an error.  */
static const yytype_int8 yydefact[] =
{
       4,     0,     0,     0,     9,     0,     2,     4,     6,     5,
       8,     7,     0,    55,     0,     0,     0,     0,     1,     3,
      67,    62,     0,     0,     0,    48,    49,    52,    52,    38,
       0,     0,     0,     0,     0,    76,    69,     0,     0,    68,
       0,    67,    73,    70,    71,    72,    18,    19,     0,     0,
       0,    45,    17,    46,    28,     0,    58,    21,     0,    12,
      11,    53,    55,     0,    51,    63,     0,    44,    78,     0,
       0,     0,    75,    74,     0,     0,     0,    79,    61,    66,
       0,    25,     0,    36,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
      56,     0,     0,     0,    10,    52,    64,     0,    43,    77,
       0,     0,     0,     0,     0,    41,    17,    20,    35,    13,
      14,    15,    16,    29,    30,    31,    32,    33,    34,    26,
      27,     0,     0,    24,     0,     0,    57,     0,    53,    50,
       0,    47,    44,     0,     0,    37,    40,    39,    23,    22,
      44,    54,    56,    65,    42,    67,    67,     0,     0,     0,
       0,     0,    60,    44,    54,    81,    82,     0,     0,    59,
      67,     0,    80
};

/* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
    -135,  -135,   174,  -135,  -135,   -98,   -37,   -23,   -43,   135,
    -135,   -20,  -134,   -19,   -18,    34,   -24,   184,  -135,  -135,
    -135,  -135,  -135,   -40,  -135,  -135,  -135,  -135,  -135
};

/* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int8 yydefgoto[] =
{
       0,     5,     6,     7,     8,    61,    51,    52,    53,    54,
      36,    55,   107,   108,    57,    39,    63,    64,    15,    10,
      11,    66,    12,    40,    41,    42,    43,    44,    45
};

/* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
   positive, shift that token.  If negative, reduce the rule whose
   number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_int16 yytable[] =
{
      37,    79,    38,    56,    65,   138,   102,    85,   154,    29,
       1,    69,   103,    84,    30,    31,   157,    32,    33,    34,
      67,    37,   -38,    38,   -38,    81,    82,   110,   111,   167,
      86,    87,    88,    89,     9,    96,    97,   151,    98,    13,
      99,     9,   153,    84,    35,   117,   118,    82,    82,   119,
     120,   121,   122,   129,   130,   112,     1,   116,     2,     3,
      59,   164,    60,   116,   116,   116,   116,   123,   124,   125,
     126,   127,   128,    82,    82,    46,    47,    22,    46,    47,
      23,   139,   136,   134,    46,    47,    24,    18,    48,    16,
       4,    48,   135,    49,   113,   114,    49,    48,    96,    97,
      25,    50,    96,    97,    50,   -41,    17,   -41,    20,   143,
      80,    68,    21,   144,    58,   160,   161,    90,    91,    92,
      93,    94,    95,   -40,    74,   -40,    28,    75,    26,    76,
     171,    86,    87,    88,    89,    37,    37,    38,    38,   -39,
      27,   -39,    96,    97,   131,   132,    88,    89,    62,    67,
      37,    70,    38,    71,    72,    78,    73,    77,   100,   101,
     106,   104,   105,   115,   133,   137,   109,   141,   142,    96,
     140,   146,   145,   150,   147,   148,   162,   149,   152,   158,
     168,    19,   155,   156,    83,    14,   159,   163,     0,   165,
     166,   169,   170,     0,   172
};

static const yytype_int16 yycheck[] =
{
      20,    41,    20,    22,    28,   103,    31,    50,   142,     4,
       5,    30,    37,    50,     9,    10,   150,    12,    13,    14,
      29,    41,    31,    41,    33,    48,    49,    70,    71,   163,
      15,    16,    17,    18,     0,    19,    20,   135,    31,     4,
      33,     7,   140,    80,    39,    30,    30,    70,    71,    86,
      87,    88,    89,    96,    97,    74,     5,    80,     7,     8,
       4,   159,     6,    86,    87,    88,    89,    90,    91,    92,
      93,    94,    95,    96,    97,     3,     4,    28,     3,     4,
      31,   105,   101,    28,     3,     4,    37,     0,    16,     4,
      39,    16,    37,    21,     3,     4,    21,    16,    19,    20,
      39,    29,    19,    20,    29,    31,     4,    33,    35,    30,
      29,    39,    39,    30,     3,   155,   156,    22,    23,    24,
      25,    26,    27,    31,    28,    33,    29,    31,    39,    33,
     170,    15,    16,    17,    18,   155,   156,   155,   156,    31,
      35,    33,    19,    20,     3,     4,    17,    18,     4,    29,
     170,    29,   170,    29,    39,    36,    39,    39,    32,    28,
      30,    36,    34,     4,     4,     3,    39,    30,    34,    19,
      38,    32,    39,    35,    32,    32,    36,    32,    32,    28,
      11,     7,    35,    35,    49,     1,    37,    35,    -1,    36,
      36,    36,    35,    -1,    36
};

/* YYSTOS[STATE-NUM] -- The symbol kind of the accessing symbol of
   state STATE-NUM.  */
static const yytype_int8 yystos[] =
{
       0,     5,     7,     8,    39,    41,    42,    43,    44,    55,
      59,    60,    62,     4,    57,    58,     4,     4,     0,    42,
      35,    39,    28,    31,    37,    39,    39,    35,    29,     4,
       9,    10,    12,    13,    14,    39,    50,    51,    54,    55,
      63,    64,    65,    66,    67,    68,     3,     4,    16,    21,
      29,    46,    47,    48,    49,    51,    53,    54,     3,     4,
       6,    45,     4,    56,    57,    56,    61,    29,    39,    53,
      29,    29,    39,    39,    28,    31,    33,    39,    36,    63,
      29,    47,    47,    49,    46,    48,    15,    16,    17,    18,
      22,    23,    24,    25,    26,    27,    19,    20,    31,    33,
      32,    28,    31,    37,    36,    34,    30,    52,    53,    39,
      48,    48,    53,     3,     4,     4,    47,    30,    30,    46,
      46,    46,    46,    47,    47,    47,    47,    47,    47,    48,
      48,     3,     4,     4,    28,    37,    53,     3,    45,    56,
      38,    30,    34,    30,    30,    39,    32,    32,    32,    32,
      35,    45,    32,    45,    52,    35,    35,    52,    28,    37,
      63,    63,    36,    35,    45,    36,    36,    52,    11,    36,
      35,    63,    36
};

/* YYR1[RULE-NUM] -- Symbol kind of the left-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr1[] =
{
       0,    40,    41,    42,    42,    43,    43,    43,    43,    43,
      44,    45,    45,    46,    46,    46,    46,    46,    47,    47,
      47,    47,    47,    47,    47,    47,    48,    48,    48,    49,
      49,    49,    49,    49,    49,    49,    49,    50,    51,    51,
      51,    51,    52,    52,    52,    53,    53,    54,    55,    55,
      56,    56,    56,    57,    57,    57,    57,    58,    58,    58,
      58,    59,    60,    61,    62,    62,    63,    63,    64,    64,
      64,    64,    64,    64,    64,    64,    64,    65,    65,    66,
      67,    67,    68
};

/* YYR2[RULE-NUM] -- Number of symbols on the right-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr2[] =
{
       0,     2,     1,     2,     0,     1,     1,     1,     1,     1,
       5,     1,     1,     3,     3,     3,     3,     1,     1,     1,
       3,     1,     4,     4,     3,     2,     3,     3,     1,     3,
       3,     3,     3,     3,     3,     3,     2,     4,     1,     4,
       4,     3,     3,     1,     0,     1,     1,     4,     3,     3,
       3,     1,     0,     3,     6,     1,     4,     5,     3,    10,
       8,     4,     2,     1,     5,     7,     2,     0,     1,     1,
       1,     1,     1,     1,     2,     2,     1,     3,     2,     2,
      11,     7,     7
};


enum { YYENOMEM = -2 };

#define yyerrok         (yyerrstatus = 0)
#define yyclearin       (yychar = YYEMPTY)

#define YYACCEPT        goto yyacceptlab
#define YYABORT         goto yyabortlab
#define YYERROR         goto yyerrorlab
#define YYNOMEM         goto yyexhaustedlab


#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)                                    \
  do                                                              \
    if (yychar == YYEMPTY)                                        \
      {                                                           \
        yychar = (Token);                                         \
        yylval = (Value);                                         \
        YYPOPSTACK (yylen);                                       \
        yystate = *yyssp;                                         \
        goto yybackup;                                            \
      }                                                           \
    else                                                          \
      {                                                           \
        yyerror (YY_("syntax error: cannot back up")); \
        YYERROR;                                                  \
      }                                                           \
  while (0)

/* Backward compatibility with an undocumented macro.
   Use YYerror or YYUNDEF. */
#define YYERRCODE YYUNDEF


/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)                        \
do {                                            \
  if (yydebug)                                  \
    YYFPRINTF Args;                             \
} while (0)




# define YY_SYMBOL_PRINT(Title, Kind, Value, Location)                    \
do {                                                                      \
  if (yydebug)                                                            \
    {                                                                     \
      YYFPRINTF (stderr, "%s ", Title);                                   \
      yy_symbol_print (stderr,                                            \
                  Kind, Value); \
      YYFPRINTF (stderr, "\n");                                           \
    }                                                                     \
} while (0)


/*-----------------------------------.
| Print this symbol's value on YYO.  |
`-----------------------------------*/

static void
yy_symbol_value_print (FILE *yyo,
                       yysymbol_kind_t yykind, YYSTYPE const * const yyvaluep)
{
  FILE *yyoutput = yyo;
  YY_USE (yyoutput);
  if (!yyvaluep)
    return;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YY_USE (yykind);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/*---------------------------.
| Print this symbol on YYO.  |
`---------------------------*/

static void
yy_symbol_print (FILE *yyo,
                 yysymbol_kind_t yykind, YYSTYPE const * const yyvaluep)
{
  YYFPRINTF (yyo, "%s %s (",
             yykind < YYNTOKENS ? "token" : "nterm", yysymbol_name (yykind));

  yy_symbol_value_print (yyo, yykind, yyvaluep);
  YYFPRINTF (yyo, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

static void
yy_stack_print (yy_state_t *yybottom, yy_state_t *yytop)
{
  YYFPRINTF (stderr, "Stack now");
  for (; yybottom <= yytop; yybottom++)
    {
      int yybot = *yybottom;
      YYFPRINTF (stderr, " %d", yybot);
    }
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)                            \
do {                                                            \
  if (yydebug)                                                  \
    yy_stack_print ((Bottom), (Top));                           \
} while (0)


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

static void
yy_reduce_print (yy_state_t *yyssp, YYSTYPE *yyvsp,
                 int yyrule)
{
  int yylno = yyrline[yyrule];
  int yynrhs = yyr2[yyrule];
  int yyi;
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %d):\n",
             yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      YYFPRINTF (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr,
                       YY_ACCESSING_SYMBOL (+yyssp[yyi + 1 - yynrhs]),
                       &yyvsp[(yyi + 1) - (yynrhs)]);
      YYFPRINTF (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)          \
do {                                    \
  if (yydebug)                          \
    yy_reduce_print (yyssp, yyvsp, Rule); \
} while (0)

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args) ((void) 0)
# define YY_SYMBOL_PRINT(Title, Kind, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   YYSTACK_ALLOC_MAXIMUM < YYSTACK_BYTES (YYMAXDEPTH)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif






/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

static void
yydestruct (const char *yymsg,
            yysymbol_kind_t yykind, YYSTYPE *yyvaluep)
{
  YY_USE (yyvaluep);
  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yykind, yyvaluep, yylocationp);

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YY_USE (yykind);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/* Lookahead token kind.  */
int yychar;

/* The semantic value of the lookahead symbol.  */
YYSTYPE yylval;
/* Number of syntax errors so far.  */
int yynerrs;




/*----------.
| yyparse.  |
`----------*/

int
yyparse (void)
{
    yy_state_fast_t yystate = 0;
    /* Number of tokens to shift before error messages enabled.  */
    int yyerrstatus = 0;

    /* Refer to the stacks through separate pointers, to allow yyoverflow
       to reallocate them elsewhere.  */

    /* Their size.  */
    YYPTRDIFF_T yystacksize = YYINITDEPTH;

    /* The state stack: array, bottom, top.  */
    yy_state_t yyssa[YYINITDEPTH];
    yy_state_t *yyss = yyssa;
    yy_state_t *yyssp = yyss;

    /* The semantic value stack: array, bottom, top.  */
    YYSTYPE yyvsa[YYINITDEPTH];
    YYSTYPE *yyvs = yyvsa;
    YYSTYPE *yyvsp = yyvs;

  int yyn;
  /* The return value of yyparse.  */
  int yyresult;
  /* Lookahead symbol kind.  */
  yysymbol_kind_t yytoken = YYSYMBOL_YYEMPTY;
  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;



#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N))

  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yychar = YYEMPTY; /* Cause a token to be read.  */

  goto yysetstate;


/*------------------------------------------------------------.
| yynewstate -- push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;


/*--------------------------------------------------------------------.
| yysetstate -- set current state (the top of the stack) to yystate.  |
`--------------------------------------------------------------------*/
yysetstate:
  YYDPRINTF ((stderr, "Entering state %d\n", yystate));
  YY_ASSERT (0 <= yystate && yystate < YYNSTATES);
  YY_IGNORE_USELESS_CAST_BEGIN
  *yyssp = YY_CAST (yy_state_t, yystate);
  YY_IGNORE_USELESS_CAST_END
  YY_STACK_PRINT (yyss, yyssp);

  if (yyss + yystacksize - 1 <= yyssp)
#if !defined yyoverflow && !defined YYSTACK_RELOCATE
    YYNOMEM;
#else
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYPTRDIFF_T yysize = yyssp - yyss + 1;

# if defined yyoverflow
      {
        /* Give user a chance to reallocate the stack.  Use copies of
           these so that the &'s don't force the real ones into
           memory.  */
        yy_state_t *yyss1 = yyss;
        YYSTYPE *yyvs1 = yyvs;

        /* Each stack pointer address is followed by the size of the
           data in use in that stack, in bytes.  This used to be a
           conditional around just the two extra args, but that might
           be undefined if yyoverflow is a macro.  */
        yyoverflow (YY_("memory exhausted"),
                    &yyss1, yysize * YYSIZEOF (*yyssp),
                    &yyvs1, yysize * YYSIZEOF (*yyvsp),
                    &yystacksize);
        yyss = yyss1;
        yyvs = yyvs1;
      }
# else /* defined YYSTACK_RELOCATE */
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
        YYNOMEM;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
        yystacksize = YYMAXDEPTH;

      {
        yy_state_t *yyss1 = yyss;
        union yyalloc *yyptr =
          YY_CAST (union yyalloc *,
                   YYSTACK_ALLOC (YY_CAST (YYSIZE_T, YYSTACK_BYTES (yystacksize))));
        if (! yyptr)
          YYNOMEM;
        YYSTACK_RELOCATE (yyss_alloc, yyss);
        YYSTACK_RELOCATE (yyvs_alloc, yyvs);
#  undef YYSTACK_RELOCATE
        if (yyss1 != yyssa)
          YYSTACK_FREE (yyss1);
      }
# endif

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;

      YY_IGNORE_USELESS_CAST_BEGIN
      YYDPRINTF ((stderr, "Stack size increased to %ld\n",
                  YY_CAST (long, yystacksize)));
      YY_IGNORE_USELESS_CAST_END

      if (yyss + yystacksize - 1 <= yyssp)
        YYABORT;
    }
#endif /* !defined yyoverflow && !defined YYSTACK_RELOCATE */


  if (yystate == YYFINAL)
    YYACCEPT;

  goto yybackup;


/*-----------.
| yybackup.  |
`-----------*/
yybackup:
  /* Do appropriate processing given the current state.  Read a
     lookahead token if we need one and don't already have one.  */

  /* First try to decide what to do without reference to lookahead token.  */
  yyn = yypact[yystate];
  if (yypact_value_is_default (yyn))
    goto yydefault;

  /* Not known => get a lookahead token if don't already have one.  */

  /* YYCHAR is either empty, or end-of-input, or a valid lookahead.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token\n"));
      yychar = yylex ();
    }

  if (yychar <= YYEOF)
    {
      yychar = YYEOF;
      yytoken = YYSYMBOL_YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
    }
  else if (yychar == YYerror)
    {
      /* The scanner already issued an error message, process directly
         to error recovery.  But do not keep the error token as
         lookahead, it is too special and may lead us to an endless
         loop in error recovery. */
      yychar = YYUNDEF;
      yytoken = YYSYMBOL_YYerror;
      goto yyerrlab1;
    }
  else
    {
      yytoken = YYTRANSLATE (yychar);
      YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
    }

  /* If the proper action on seeing token YYTOKEN is to reduce or to
     detect an error, take that action.  */
  yyn += yytoken;
  if (yyn < 0 || YYLAST < yyn || yycheck[yyn] != yytoken)
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yytable_value_is_error (yyn))
        goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the lookahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);
  yystate = yyn;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END

  /* Discard the shifted token.  */
  yychar = YYEMPTY;
  goto yynewstate;


/*-----------------------------------------------------------.
| yydefault -- do the default action for the current state.  |
`-----------------------------------------------------------*/
yydefault:
  yyn = yydefact[yystate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;


/*-----------------------------.
| yyreduce -- do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     '$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];


  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
  case 2: /* Program: ProgramElementList  */
#line 149 "parser.yacc"
{  
  root = A_Program((yyvsp[0].programElementList));
  (yyval.program) = A_Program((yyvsp[0].programElementList));
}
#line 1260 "y.tab.cpp"
    break;

  case 3: /* ProgramElementList: ProgramElement ProgramElementList  */
#line 156 "parser.yacc"
{
  (yyval.programElementList) = A_ProgramElementList((yyvsp[-1].programElement), (yyvsp[0].programElementList));
}
#line 1268 "y.tab.cpp"
    break;

  case 4: /* ProgramElementList: %empty  */
#line 160 "parser.yacc"
{
  (yyval.programElementList) = nullptr;
}
#line 1276 "y.tab.cpp"
    break;

  case 5: /* ProgramElement: VarDeclStmt  */
#line 166 "parser.yacc"
{
  (yyval.programElement) = A_ProgramVarDeclStmt((yyvsp[0].varDeclStmt)->pos, (yyvsp[0].varDeclStmt));
}
#line 1284 "y.tab.cpp"
    break;

  case 6: /* ProgramElement: StructDef  */
#line 170 "parser.yacc"
{
  (yyval.programElement) = A_ProgramStructDef((yyvsp[0].structDef)->pos, (yyvsp[0].structDef));
}
#line 1292 "y.tab.cpp"
    break;

  case 7: /* ProgramElement: FnDeclStmt  */
#line 174 "parser.yacc"
{
  (yyval.programElement) = A_ProgramFnDeclStmt((yyvsp[0].fnDeclStmt)->pos, (yyvsp[0].fnDeclStmt));
}
#line 1300 "y.tab.cpp"
    break;

  case 8: /* ProgramElement: FnDef  */
#line 178 "parser.yacc"
{
  (yyval.programElement) = A_ProgramFnDef((yyvsp[0].fnDef)->pos, (yyvsp[0].fnDef));
}
#line 1308 "y.tab.cpp"
    break;

  case 9: /* ProgramElement: SEMICOLON  */
#line 182 "parser.yacc"
{
  (yyval.programElement) = A_ProgramNullStmt((yyvsp[0].pos));
}
#line 1316 "y.tab.cpp"
    break;

  case 10: /* StructDef: STRUCT ID LBRACE VarDeclList RBRACE  */
#line 189 "parser.yacc"
{
  (yyval.structDef) = A_StructDef((yyvsp[-4].pos), (yyvsp[-3].tokenId)->id, (yyvsp[-1].varDeclList));
}
#line 1324 "y.tab.cpp"
    break;

  case 11: /* Type: INT  */
#line 195 "parser.yacc"
{
  (yyval.type) = A_NativeType((yyvsp[0].pos),A_intTypeKind);
}
#line 1332 "y.tab.cpp"
    break;

  case 12: /* Type: ID  */
#line 199 "parser.yacc"
{
  (yyval.type) = A_StructType((yyvsp[0].tokenId)->pos, (yyvsp[0].tokenId)->id);
}
#line 1340 "y.tab.cpp"
    break;

  case 13: /* ArithExpr: ArithExpr ADD ArithExpr  */
#line 206 "parser.yacc"
{
  (yyval.arithExpr) = A_ArithBiOp_Expr((yyvsp[-2].arithExpr)->pos, A_ArithBiOpExpr((yyvsp[-2].arithExpr)->pos, A_add, (yyvsp[-2].arithExpr), (yyvsp[0].arithExpr)));
}
#line 1348 "y.tab.cpp"
    break;

  case 14: /* ArithExpr: ArithExpr SUB ArithExpr  */
#line 210 "parser.yacc"
{
  (yyval.arithExpr) = A_ArithBiOp_Expr((yyvsp[-2].arithExpr)->pos, A_ArithBiOpExpr((yyvsp[-2].arithExpr)->pos, A_sub, (yyvsp[-2].arithExpr), (yyvsp[0].arithExpr)));
}
#line 1356 "y.tab.cpp"
    break;

  case 15: /* ArithExpr: ArithExpr MUL ArithExpr  */
#line 214 "parser.yacc"
{
  (yyval.arithExpr) = A_ArithBiOp_Expr((yyvsp[-2].arithExpr)->pos, A_ArithBiOpExpr((yyvsp[-2].arithExpr)->pos, A_mul, (yyvsp[-2].arithExpr), (yyvsp[0].arithExpr)));
}
#line 1364 "y.tab.cpp"
    break;

  case 16: /* ArithExpr: ArithExpr DIV ArithExpr  */
#line 218 "parser.yacc"
{
  (yyval.arithExpr) = A_ArithBiOp_Expr((yyvsp[-2].arithExpr)->pos, A_ArithBiOpExpr((yyvsp[-2].arithExpr)->pos, A_div, (yyvsp[-2].arithExpr), (yyvsp[0].arithExpr)));
}
#line 1372 "y.tab.cpp"
    break;

  case 17: /* ArithExpr: ExprUnit  */
#line 222 "parser.yacc"
{
  (yyval.arithExpr) = A_ExprUnit((yyvsp[0].exprUnit)->pos, (yyvsp[0].exprUnit));
}
#line 1380 "y.tab.cpp"
    break;

  case 18: /* ExprUnit: NUM  */
#line 229 "parser.yacc"
{
  (yyval.exprUnit) = A_NumExprUnit((yyvsp[0].tokenNum)->pos, (yyvsp[0].tokenNum)->num);
}
#line 1388 "y.tab.cpp"
    break;

  case 19: /* ExprUnit: ID  */
#line 233 "parser.yacc"
{
  (yyval.exprUnit) = A_IdExprUnit((yyvsp[0].tokenId)->pos, (yyvsp[0].tokenId)->id);
}
#line 1396 "y.tab.cpp"
    break;

  case 20: /* ExprUnit: LPAREN ArithExpr RPAREN  */
#line 237 "parser.yacc"
{
  //? $2->pos
  (yyval.exprUnit) = A_ArithExprUnit((yyvsp[-2].pos), (yyvsp[-1].arithExpr));
}
#line 1405 "y.tab.cpp"
    break;

  case 21: /* ExprUnit: FnCall  */
#line 242 "parser.yacc"
{
  (yyval.exprUnit) = A_CallExprUnit((yyvsp[0].fnCall)->pos, (yyvsp[0].fnCall));
}
#line 1413 "y.tab.cpp"
    break;

  case 22: /* ExprUnit: LeftVal LBRACKET ID RBRACKET  */
#line 246 "parser.yacc"
{
  (yyval.exprUnit) = A_ArrayExprUnit((yyvsp[-3].leftVal)->pos,A_ArrayExpr((yyvsp[-3].leftVal)->pos, (yyvsp[-3].leftVal), A_IdIndexExpr((yyvsp[-1].tokenId)->pos, (yyvsp[-1].tokenId)->id)));
}
#line 1421 "y.tab.cpp"
    break;

  case 23: /* ExprUnit: LeftVal LBRACKET NUM RBRACKET  */
#line 250 "parser.yacc"
{
  (yyval.exprUnit) = A_ArrayExprUnit((yyvsp[-3].leftVal)->pos,A_ArrayExpr((yyvsp[-3].leftVal)->pos, (yyvsp[-3].leftVal), A_NumIndexExpr((yyvsp[-1].tokenNum)->pos, (yyvsp[-1].tokenNum)->num)));
}
#line 1429 "y.tab.cpp"
    break;

  case 24: /* ExprUnit: LeftVal DOT ID  */
#line 254 "parser.yacc"
{
  (yyval.exprUnit) = A_MemberExprUnit((yyvsp[-2].leftVal)->pos, A_MemberExpr((yyvsp[-2].leftVal)->pos, (yyvsp[-2].leftVal), (yyvsp[0].tokenId)->id));
}
#line 1437 "y.tab.cpp"
    break;

  case 25: /* ExprUnit: SUB ExprUnit  */
#line 258 "parser.yacc"
{
  (yyval.exprUnit) = A_ArithUExprUnit((yyvsp[-1].pos), A_ArithUExpr((yyvsp[-1].pos), A_neg, (yyvsp[0].exprUnit)));
}
#line 1445 "y.tab.cpp"
    break;

  case 26: /* BoolExpr: BoolExpr AND BoolExpr  */
#line 265 "parser.yacc"
{
  (yyval.boolExpr) = A_BoolBiOp_Expr((yyvsp[-2].boolExpr)->pos, A_BoolBiOpExpr((yyvsp[-2].boolExpr)->pos, A_and, (yyvsp[-2].boolExpr), (yyvsp[0].boolExpr)));
}
#line 1453 "y.tab.cpp"
    break;

  case 27: /* BoolExpr: BoolExpr OR BoolExpr  */
#line 269 "parser.yacc"
{
  (yyval.boolExpr) = A_BoolBiOp_Expr((yyvsp[-2].boolExpr)->pos, A_BoolBiOpExpr((yyvsp[-2].boolExpr)->pos, A_or, (yyvsp[-2].boolExpr), (yyvsp[0].boolExpr)));
}
#line 1461 "y.tab.cpp"
    break;

  case 28: /* BoolExpr: BoolUnit  */
#line 273 "parser.yacc"
{
  (yyval.boolExpr) = A_BoolExpr((yyvsp[0].boolUnit)->pos, (yyvsp[0].boolUnit));
}
#line 1469 "y.tab.cpp"
    break;

  case 29: /* BoolUnit: ExprUnit GT ExprUnit  */
#line 280 "parser.yacc"
{
  (yyval.boolUnit) = A_ComExprUnit((yyvsp[-2].exprUnit)->pos, A_ComExpr((yyvsp[-2].exprUnit)->pos, A_gt, (yyvsp[-2].exprUnit), (yyvsp[0].exprUnit)));
}
#line 1477 "y.tab.cpp"
    break;

  case 30: /* BoolUnit: ExprUnit LT ExprUnit  */
#line 284 "parser.yacc"
{
  (yyval.boolUnit) = A_ComExprUnit((yyvsp[-2].exprUnit)->pos, A_ComExpr((yyvsp[-2].exprUnit)->pos, A_lt, (yyvsp[-2].exprUnit), (yyvsp[0].exprUnit)));
}
#line 1485 "y.tab.cpp"
    break;

  case 31: /* BoolUnit: ExprUnit GE ExprUnit  */
#line 288 "parser.yacc"
{
  (yyval.boolUnit) = A_ComExprUnit((yyvsp[-2].exprUnit)->pos, A_ComExpr((yyvsp[-2].exprUnit)->pos, A_ge, (yyvsp[-2].exprUnit), (yyvsp[0].exprUnit)));
}
#line 1493 "y.tab.cpp"
    break;

  case 32: /* BoolUnit: ExprUnit LE ExprUnit  */
#line 292 "parser.yacc"
{
  (yyval.boolUnit) = A_ComExprUnit((yyvsp[-2].exprUnit)->pos, A_ComExpr((yyvsp[-2].exprUnit)->pos, A_le, (yyvsp[-2].exprUnit), (yyvsp[0].exprUnit)));
}
#line 1501 "y.tab.cpp"
    break;

  case 33: /* BoolUnit: ExprUnit EQ ExprUnit  */
#line 296 "parser.yacc"
{
  (yyval.boolUnit) = A_ComExprUnit((yyvsp[-2].exprUnit)->pos, A_ComExpr((yyvsp[-2].exprUnit)->pos, A_eq, (yyvsp[-2].exprUnit), (yyvsp[0].exprUnit)));
}
#line 1509 "y.tab.cpp"
    break;

  case 34: /* BoolUnit: ExprUnit NE ExprUnit  */
#line 300 "parser.yacc"
{
  (yyval.boolUnit) = A_ComExprUnit((yyvsp[-2].exprUnit)->pos, A_ComExpr((yyvsp[-2].exprUnit)->pos, A_ne, (yyvsp[-2].exprUnit), (yyvsp[0].exprUnit)));
}
#line 1517 "y.tab.cpp"
    break;

  case 35: /* BoolUnit: LPAREN BoolExpr RPAREN  */
#line 304 "parser.yacc"
{
  (yyval.boolUnit) = A_BoolExprUnit((yyvsp[-2].pos), (yyvsp[-1].boolExpr));
}
#line 1525 "y.tab.cpp"
    break;

  case 36: /* BoolUnit: NOT BoolUnit  */
#line 308 "parser.yacc"
{
  (yyval.boolUnit) = A_BoolUOpExprUnit((yyvsp[-1].pos), A_BoolUOpExpr((yyvsp[-1].pos), A_not, (yyvsp[0].boolUnit)));
}
#line 1533 "y.tab.cpp"
    break;

  case 37: /* AssignStmt: LeftVal ASS RightVal SEMICOLON  */
#line 316 "parser.yacc"
{
  (yyval.assignStmt) = A_AssignStmt((yyvsp[-3].leftVal)->pos, (yyvsp[-3].leftVal), (yyvsp[-1].rightVal));
}
#line 1541 "y.tab.cpp"
    break;

  case 38: /* LeftVal: ID  */
#line 323 "parser.yacc"
{
  (yyval.leftVal) = A_IdExprLVal((yyvsp[0].tokenId)->pos, (yyvsp[0].tokenId)->id);
}
#line 1549 "y.tab.cpp"
    break;

  case 39: /* LeftVal: LeftVal LBRACKET ID RBRACKET  */
#line 327 "parser.yacc"
{
  (yyval.leftVal) = A_ArrExprLVal((yyvsp[-3].leftVal)->pos, A_ArrayExpr((yyvsp[-3].leftVal)->pos, (yyvsp[-3].leftVal), A_IdIndexExpr((yyvsp[-1].tokenId)->pos, (yyvsp[-1].tokenId)->id)));
}
#line 1557 "y.tab.cpp"
    break;

  case 40: /* LeftVal: LeftVal LBRACKET NUM RBRACKET  */
#line 331 "parser.yacc"
{
  (yyval.leftVal) = A_ArrExprLVal((yyvsp[-3].leftVal)->pos, A_ArrayExpr((yyvsp[-3].leftVal)->pos, (yyvsp[-3].leftVal),A_NumIndexExpr((yyvsp[-1].tokenNum)->pos, (yyvsp[-1].tokenNum)->num)));
}
#line 1565 "y.tab.cpp"
    break;

  case 41: /* LeftVal: LeftVal DOT ID  */
#line 335 "parser.yacc"
{
  (yyval.leftVal) = A_MemberExprLVal((yyvsp[-2].leftVal)->pos, A_MemberExpr((yyvsp[-2].leftVal)->pos, (yyvsp[-2].leftVal), (yyvsp[0].tokenId)->id));
}
#line 1573 "y.tab.cpp"
    break;

  case 42: /* RightValList: RightVal COMMA RightValList  */
#line 342 "parser.yacc"
{
  (yyval.rightValList) = A_RightValList((yyvsp[-2].rightVal), (yyvsp[0].rightValList));
}
#line 1581 "y.tab.cpp"
    break;

  case 43: /* RightValList: RightVal  */
#line 346 "parser.yacc"
{
  (yyval.rightValList) = A_RightValList((yyvsp[0].rightVal), nullptr);
}
#line 1589 "y.tab.cpp"
    break;

  case 44: /* RightValList: %empty  */
#line 350 "parser.yacc"
{
  (yyval.rightValList) = nullptr;
}
#line 1597 "y.tab.cpp"
    break;

  case 45: /* RightVal: ArithExpr  */
#line 357 "parser.yacc"
{
  (yyval.rightVal) = A_ArithExprRVal((yyvsp[0].arithExpr)->pos, (yyvsp[0].arithExpr));
}
#line 1605 "y.tab.cpp"
    break;

  case 46: /* RightVal: BoolExpr  */
#line 361 "parser.yacc"
{
  (yyval.rightVal) = A_BoolExprRVal((yyvsp[0].boolExpr)->pos, (yyvsp[0].boolExpr));
}
#line 1613 "y.tab.cpp"
    break;

  case 47: /* FnCall: ID LPAREN RightValList RPAREN  */
#line 368 "parser.yacc"
{
  (yyval.fnCall) = A_FnCall((yyvsp[-3].tokenId)->pos, (yyvsp[-3].tokenId)->id, (yyvsp[-1].rightValList));
}
#line 1621 "y.tab.cpp"
    break;

  case 48: /* VarDeclStmt: LET VarDecl SEMICOLON  */
#line 375 "parser.yacc"
{
  (yyval.varDeclStmt) = A_VarDeclStmt((yyvsp[-1].varDecl)->pos, (yyvsp[-1].varDecl));
}
#line 1629 "y.tab.cpp"
    break;

  case 49: /* VarDeclStmt: LET VarDef SEMICOLON  */
#line 379 "parser.yacc"
{
  (yyval.varDeclStmt) = A_VarDefStmt((yyvsp[-1].varDef)->pos, (yyvsp[-1].varDef));
}
#line 1637 "y.tab.cpp"
    break;

  case 50: /* VarDeclList: VarDecl COMMA VarDeclList  */
#line 386 "parser.yacc"
{
  (yyval.varDeclList) = A_VarDeclList((yyvsp[-2].varDecl), (yyvsp[0].varDeclList));
}
#line 1645 "y.tab.cpp"
    break;

  case 51: /* VarDeclList: VarDecl  */
#line 390 "parser.yacc"
{
  (yyval.varDeclList) = A_VarDeclList((yyvsp[0].varDecl), nullptr);
}
#line 1653 "y.tab.cpp"
    break;

  case 52: /* VarDeclList: %empty  */
#line 394 "parser.yacc"
{
  (yyval.varDeclList) = nullptr;
}
#line 1661 "y.tab.cpp"
    break;

  case 53: /* VarDecl: ID COLON Type  */
#line 401 "parser.yacc"
{
  (yyval.varDecl) = A_VarDecl_Scalar((yyvsp[-2].tokenId)->pos, A_VarDeclScalar((yyvsp[-2].tokenId)->pos, (yyvsp[-2].tokenId)->id, (yyvsp[0].type)));
}
#line 1669 "y.tab.cpp"
    break;

  case 54: /* VarDecl: ID LBRACKET NUM RBRACKET COLON Type  */
#line 405 "parser.yacc"
{
  (yyval.varDecl) = A_VarDecl_Array((yyvsp[-5].tokenId)->pos, A_VarDeclArray((yyvsp[-5].tokenId)->pos, (yyvsp[-5].tokenId)->id, (yyvsp[-3].tokenNum)->num, (yyvsp[0].type)));
}
#line 1677 "y.tab.cpp"
    break;

  case 55: /* VarDecl: ID  */
#line 409 "parser.yacc"
{
  //default 类型？
  (yyval.varDecl) = A_VarDecl_Scalar((yyvsp[0].tokenId)->pos, A_VarDeclScalar((yyvsp[0].tokenId)->pos, (yyvsp[0].tokenId)->id, nullptr));
}
#line 1686 "y.tab.cpp"
    break;

  case 56: /* VarDecl: ID LBRACKET NUM RBRACKET  */
#line 414 "parser.yacc"
{
  (yyval.varDecl) = A_VarDecl_Array((yyvsp[-3].tokenId)->pos, A_VarDeclArray((yyvsp[-3].tokenId)->pos, (yyvsp[-3].tokenId)->id, (yyvsp[-1].tokenNum)->num, nullptr));
}
#line 1694 "y.tab.cpp"
    break;

  case 57: /* VarDef: ID COLON Type ASS RightVal  */
#line 421 "parser.yacc"
{
  (yyval.varDef) = A_VarDef_Scalar((yyvsp[-4].tokenId)->pos, A_VarDefScalar((yyvsp[-4].tokenId)->pos, (yyvsp[-4].tokenId)->id, (yyvsp[-2].type), (yyvsp[0].rightVal)));
}
#line 1702 "y.tab.cpp"
    break;

  case 58: /* VarDef: ID ASS RightVal  */
#line 425 "parser.yacc"
{
  (yyval.varDef) = A_VarDef_Scalar((yyvsp[-2].tokenId)->pos, A_VarDefScalar((yyvsp[-2].tokenId)->pos, (yyvsp[-2].tokenId)->id, nullptr, (yyvsp[0].rightVal)));
}
#line 1710 "y.tab.cpp"
    break;

  case 59: /* VarDef: ID LBRACKET NUM RBRACKET COLON Type ASS LBRACE RightValList RBRACE  */
#line 429 "parser.yacc"
{
  (yyval.varDef) = A_VarDef_Array((yyvsp[-9].tokenId)->pos, A_VarDefArray((yyvsp[-9].tokenId)->pos, (yyvsp[-9].tokenId)->id, (yyvsp[-7].tokenNum)->num, (yyvsp[-4].type), (yyvsp[-1].rightValList)));
}
#line 1718 "y.tab.cpp"
    break;

  case 60: /* VarDef: ID LBRACKET NUM RBRACKET ASS LBRACE RightValList RBRACE  */
#line 433 "parser.yacc"
{
  (yyval.varDef) = A_VarDef_Array((yyvsp[-7].tokenId)->pos, A_VarDefArray((yyvsp[-7].tokenId)->pos, (yyvsp[-7].tokenId)->id, (yyvsp[-5].tokenNum)->num, nullptr, (yyvsp[-1].rightValList)));
}
#line 1726 "y.tab.cpp"
    break;

  case 61: /* FnDef: FnDecl LBRACE CodeBlockStmtList RBRACE  */
#line 441 "parser.yacc"
{
  (yyval.fnDef) = A_FnDef((yyvsp[-3].fnDecl)->pos, (yyvsp[-3].fnDecl), (yyvsp[-1].codeBlockStmtList));
}
#line 1734 "y.tab.cpp"
    break;

  case 62: /* FnDeclStmt: FnDecl SEMICOLON  */
#line 448 "parser.yacc"
{
  (yyval.fnDeclStmt) = A_FnDeclStmt((yyvsp[-1].fnDecl)->pos, (yyvsp[-1].fnDecl));
}
#line 1742 "y.tab.cpp"
    break;

  case 63: /* ParamDecl: VarDeclList  */
#line 454 "parser.yacc"
{
  (yyval.paramDecl) = A_ParamDecl((yyvsp[0].varDeclList));
}
#line 1750 "y.tab.cpp"
    break;

  case 64: /* FnDecl: FN ID LPAREN ParamDecl RPAREN  */
#line 460 "parser.yacc"
{
  (yyval.fnDecl) = A_FnDecl((yyvsp[-4].pos), (yyvsp[-3].tokenId)->id, (yyvsp[-1].paramDecl), nullptr);
}
#line 1758 "y.tab.cpp"
    break;

  case 65: /* FnDecl: FN ID LPAREN ParamDecl RPAREN POINT Type  */
#line 464 "parser.yacc"
{
  (yyval.fnDecl) = A_FnDecl((yyvsp[-6].pos), (yyvsp[-5].tokenId)->id, (yyvsp[-3].paramDecl), (yyvsp[0].type));
}
#line 1766 "y.tab.cpp"
    break;

  case 66: /* CodeBlockStmtList: CodeBlockStmt CodeBlockStmtList  */
#line 473 "parser.yacc"
{
  (yyval.codeBlockStmtList) = A_CodeBlockStmtList((yyvsp[-1].codeBlockStmt), (yyvsp[0].codeBlockStmtList));
}
#line 1774 "y.tab.cpp"
    break;

  case 67: /* CodeBlockStmtList: %empty  */
#line 477 "parser.yacc"
{
  (yyval.codeBlockStmtList) = nullptr;
}
#line 1782 "y.tab.cpp"
    break;

  case 68: /* CodeBlockStmt: VarDeclStmt  */
#line 484 "parser.yacc"
{
  (yyval.codeBlockStmt) = A_BlockVarDeclStmt((yyvsp[0].varDeclStmt)->pos, (yyvsp[0].varDeclStmt));
}
#line 1790 "y.tab.cpp"
    break;

  case 69: /* CodeBlockStmt: AssignStmt  */
#line 488 "parser.yacc"
{
  (yyval.codeBlockStmt) = A_BlockAssignStmt((yyvsp[0].assignStmt)->pos, (yyvsp[0].assignStmt));
}
#line 1798 "y.tab.cpp"
    break;

  case 70: /* CodeBlockStmt: CallStmt  */
#line 492 "parser.yacc"
{
  (yyval.codeBlockStmt) = A_BlockCallStmt((yyvsp[0].callStmt)->pos, (yyvsp[0].callStmt));
}
#line 1806 "y.tab.cpp"
    break;

  case 71: /* CodeBlockStmt: IfStmt  */
#line 496 "parser.yacc"
{
  (yyval.codeBlockStmt) = A_BlockIfStmt((yyvsp[0].ifStmt)->pos, (yyvsp[0].ifStmt));
}
#line 1814 "y.tab.cpp"
    break;

  case 72: /* CodeBlockStmt: WhileStmt  */
#line 500 "parser.yacc"
{
  (yyval.codeBlockStmt) = A_BlockWhileStmt((yyvsp[0].whileStmt)->pos, (yyvsp[0].whileStmt));
}
#line 1822 "y.tab.cpp"
    break;

  case 73: /* CodeBlockStmt: ReturnStmt  */
#line 504 "parser.yacc"
{
  (yyval.codeBlockStmt) = A_BlockReturnStmt((yyvsp[0].returnStmt)->pos, (yyvsp[0].returnStmt));
}
#line 1830 "y.tab.cpp"
    break;

  case 74: /* CodeBlockStmt: CONTINUE SEMICOLON  */
#line 508 "parser.yacc"
{
  (yyval.codeBlockStmt) =A_BlockContinueStmt((yyvsp[-1].pos));
}
#line 1838 "y.tab.cpp"
    break;

  case 75: /* CodeBlockStmt: BREAK SEMICOLON  */
#line 512 "parser.yacc"
{
  (yyval.codeBlockStmt) = A_BlockBreakStmt((yyvsp[-1].pos));
}
#line 1846 "y.tab.cpp"
    break;

  case 76: /* CodeBlockStmt: SEMICOLON  */
#line 516 "parser.yacc"
{
  (yyval.codeBlockStmt) = A_BlockNullStmt((yyvsp[0].pos));
}
#line 1854 "y.tab.cpp"
    break;

  case 77: /* ReturnStmt: RET RightVal SEMICOLON  */
#line 523 "parser.yacc"
{
  (yyval.returnStmt) = A_ReturnStmt((yyvsp[-2].pos), (yyvsp[-1].rightVal));
}
#line 1862 "y.tab.cpp"
    break;

  case 78: /* ReturnStmt: RET SEMICOLON  */
#line 527 "parser.yacc"
{
  (yyval.returnStmt) = A_ReturnStmt((yyvsp[-1].pos), nullptr);
}
#line 1870 "y.tab.cpp"
    break;

  case 79: /* CallStmt: FnCall SEMICOLON  */
#line 534 "parser.yacc"
{
  (yyval.callStmt) = A_CallStmt((yyvsp[-1].fnCall)->pos, (yyvsp[-1].fnCall));
}
#line 1878 "y.tab.cpp"
    break;

  case 80: /* IfStmt: IF LPAREN BoolExpr RPAREN LBRACE CodeBlockStmtList RBRACE ELSE LBRACE CodeBlockStmtList RBRACE  */
#line 541 "parser.yacc"
{
  (yyval.ifStmt) = A_IfStmt((yyvsp[-10].pos), (yyvsp[-8].boolExpr), (yyvsp[-5].codeBlockStmtList), (yyvsp[-1].codeBlockStmtList));
}
#line 1886 "y.tab.cpp"
    break;

  case 81: /* IfStmt: IF LPAREN BoolExpr RPAREN LBRACE CodeBlockStmtList RBRACE  */
#line 545 "parser.yacc"
{
  (yyval.ifStmt) = A_IfStmt((yyvsp[-6].pos), (yyvsp[-4].boolExpr), (yyvsp[-1].codeBlockStmtList), nullptr);
}
#line 1894 "y.tab.cpp"
    break;

  case 82: /* WhileStmt: WHILE LPAREN BoolExpr RPAREN LBRACE CodeBlockStmtList RBRACE  */
#line 556 "parser.yacc"
{
  (yyval.whileStmt) = A_WhileStmt((yyvsp[-6].pos), (yyvsp[-4].boolExpr), (yyvsp[-1].codeBlockStmtList));
}
#line 1902 "y.tab.cpp"
    break;


#line 1906 "y.tab.cpp"

      default: break;
    }
  /* User semantic actions sometimes alter yychar, and that requires
     that yytoken be updated with the new translation.  We take the
     approach of translating immediately before every use of yytoken.
     One alternative is translating here after every semantic action,
     but that translation would be missed if the semantic action invokes
     YYABORT, YYACCEPT, or YYERROR immediately after altering yychar or
     if it invokes YYBACKUP.  In the case of YYABORT or YYACCEPT, an
     incorrect destructor might then be invoked immediately.  In the
     case of YYERROR or YYBACKUP, subsequent parser actions might lead
     to an incorrect destructor call or verbose syntax error message
     before the lookahead is translated.  */
  YY_SYMBOL_PRINT ("-> $$ =", YY_CAST (yysymbol_kind_t, yyr1[yyn]), &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;

  *++yyvsp = yyval;

  /* Now 'shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */
  {
    const int yylhs = yyr1[yyn] - YYNTOKENS;
    const int yyi = yypgoto[yylhs] + *yyssp;
    yystate = (0 <= yyi && yyi <= YYLAST && yycheck[yyi] == *yyssp
               ? yytable[yyi]
               : yydefgoto[yylhs]);
  }

  goto yynewstate;


/*--------------------------------------.
| yyerrlab -- here on detecting error.  |
`--------------------------------------*/
yyerrlab:
  /* Make sure we have latest lookahead translation.  See comments at
     user semantic actions for why this is necessary.  */
  yytoken = yychar == YYEMPTY ? YYSYMBOL_YYEMPTY : YYTRANSLATE (yychar);
  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
      yyerror (YY_("syntax error"));
    }

  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse lookahead token after an
         error, discard it.  */

      if (yychar <= YYEOF)
        {
          /* Return failure if at end of input.  */
          if (yychar == YYEOF)
            YYABORT;
        }
      else
        {
          yydestruct ("Error: discarding",
                      yytoken, &yylval);
          yychar = YYEMPTY;
        }
    }

  /* Else will try to reuse lookahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:
  /* Pacify compilers when the user code never invokes YYERROR and the
     label yyerrorlab therefore never appears in user code.  */
  if (0)
    YYERROR;
  ++yynerrs;

  /* Do not reclaim the symbols of the rule whose action triggered
     this YYERROR.  */
  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);
  yystate = *yyssp;
  goto yyerrlab1;


/*-------------------------------------------------------------.
| yyerrlab1 -- common code for both syntax error and YYERROR.  |
`-------------------------------------------------------------*/
yyerrlab1:
  yyerrstatus = 3;      /* Each real token shifted decrements this.  */

  /* Pop stack until we find a state that shifts the error token.  */
  for (;;)
    {
      yyn = yypact[yystate];
      if (!yypact_value_is_default (yyn))
        {
          yyn += YYSYMBOL_YYerror;
          if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYSYMBOL_YYerror)
            {
              yyn = yytable[yyn];
              if (0 < yyn)
                break;
            }
        }

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
        YYABORT;


      yydestruct ("Error: popping",
                  YY_ACCESSING_SYMBOL (yystate), yyvsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END


  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", YY_ACCESSING_SYMBOL (yyn), yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturnlab;


/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturnlab;


/*-----------------------------------------------------------.
| yyexhaustedlab -- YYNOMEM (memory exhaustion) comes here.  |
`-----------------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  goto yyreturnlab;


/*----------------------------------------------------------.
| yyreturnlab -- parsing is finished, clean up and return.  |
`----------------------------------------------------------*/
yyreturnlab:
  if (yychar != YYEMPTY)
    {
      /* Make sure we have latest lookahead translation.  See comments at
         user semantic actions for why this is necessary.  */
      yytoken = YYTRANSLATE (yychar);
      yydestruct ("Cleanup: discarding lookahead",
                  yytoken, &yylval);
    }
  /* Do not reclaim the symbols of the rule whose action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
                  YY_ACCESSING_SYMBOL (+*yyssp), yyvsp);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif

  return yyresult;
}

#line 561 "parser.yacc"


extern "C"{
void yyerror(char * s)
{
  fprintf(stderr, "%s\n",s);
}
int yywrap()
{
  return(1);
}
}
