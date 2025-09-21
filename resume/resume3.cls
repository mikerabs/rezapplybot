\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume3}[2025/09/18 Compact Resume Class]

\LoadClass[10pt]{article}

% Layout & typography
\RequirePackage[letterpaper, top=0.6in, bottom=0.6in, left=0.5in, right=0.5in]{geometry}
\RequirePackage{titlesec}
\RequirePackage{enumitem}
\RequirePackage{microtype}
\RequirePackage{changepage} % for adjustwidth

\microtypecontext{spacing=nonfrench}
\linespread{0.98}
\setlength{\parindent}{0pt}
\setlength{\parskip}{0pt}

% Header
\newcommand{\name}[1]{\begin{center}\huge \bfseries #1\end{center}\par\vspace{0.4em}}
\newcommand{\address}[1]{\begin{center}\normalsize #1\end{center}\par\vspace{0.6em}}

% Sections
\titleformat{\section}{\bfseries\large\uppercase}{}{0pt}{}[\vspace{0.25em}\titlerule]
\titlespacing*{\section}{0pt}{0.5ex}{0.4ex}

% Bullets (tuned a bit tighter since we add an rSection indent)
\setlist[itemize]{label=\textbullet, leftmargin=1.3em, labelsep=0.5em, itemsep=0.2em, topsep=0.3em, parsep=0pt, partopsep=0pt}
\setlist[itemize,2]{leftmargin=1.6em, label=--, itemsep=0.15em, topsep=0.15em}

% ---- rSection (single definition, with indent) ----
\newlength{\rsectionindent}
\setlength{\rsectionindent}{1em} % tweak to taste

\newenvironment{rSection}[1]{%
  \section*{#1}%
  \begin{adjustwidth}{\rsectionindent}{0pt}%
}{%
  \end{adjustwidth}%
  \par\vspace{0.2em}%
}

\endinput

%\NeedsTeXFormat{LaTeX2e}
%\ProvidesClass{resume3}[2025/09/18 Compact Resume Class]
%
%\LoadClass[10pt]{article}
%
%% Layout & typography
%\RequirePackage[letterpaper, top=0.6in, bottom=0.6in, left=0.5in, right=0.5in]{geometry}
%\RequirePackage{titlesec}
%\RequirePackage{enumitem}
%\RequirePackage{microtype}
%
%\microtypecontext{spacing=nonfrench}
%\linespread{0.98}
%\setlength{\parindent}{0pt}
%\setlength{\parskip}{0pt}
%
%% Header
%\newcommand{\name}[1]{\begin{center}\huge \bfseries #1\end{center}\par\vspace{0.4em}}
%\newcommand{\address}[1]{\begin{center}\normalsize #1\end{center}\par\vspace{0.6em}}
%%%
% Sections
%\titleformat{\section}{\bfseries\large\uppercase}{}{0pt}{}[\vspace{0.25em}\titlerule]
%\titlespacing*{\section}{0pt}{0.5ex}{0.4ex}
%
%% Bullets (single line to avoid runaway args)
%\setlist[itemize]{label=\textbullet, leftmargin=1.5em, labelsep=0.5em, itemsep=0.2em, topsep=0.3em, parsep=0pt, partopsep=0pt}
%\setlist[itemize,2]{leftmargin=1.8em, label=--, itemsep=0.15em, topsep=0.15em}
%
%% rSection
%\newenvironment{rSection}[1]{\section*{#1}}{\par\vspace{0.2em}}
%
%\RequirePackage{changepage} % for adjustwidth
%
%% Global knob for how much to indent inside sections
%\newlength{\rsectionindent}
%\setlength{\rsectionindent}{1em} % <- tweak to taste

%\newenvironment{rSection}[1]{%
%  \section*{#1}%
%  \begin{adjustwidth}{\rsectionindent}{0pt}%
%}{%
%  \end{adjustwidth}%
%  \par\vspace{0.2em}%
%}

%\endinput
