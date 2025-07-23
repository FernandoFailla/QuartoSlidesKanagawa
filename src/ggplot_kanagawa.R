# ```{r theme-definition, include=FALSE}
# --- Paleta de Cores Kanagawa Dragon ---
kanagawa_colors <- list(
  bg        = "#161618",
  fg        = "#dcd7ba",
  comment   = "#727169",
  red       = "#c34043",
  magenta   = "#957fb8",
  blue      = "#7e9cd8",
  cyan      = "#6a9589",
  green     = "#76946a",
  yellow    = "#dca561"
)

# --- Função do Tema ggplot2 ---
theme_kanagawa_dragon <- function(base_size = 14, base_family = "JetBrains Mono") {
  
  theme_minimal(base_size = base_size, base_family = base_family) %+replace%
    
    theme(
      # Elementos de Texto
      plot.title = element_text(
        color = kanagawa_colors$blue, 
        family = "Georgia", # Fonte com serifa para o título
        face = "bold", 
        size = rel(1.5),
        hjust = 0,
        margin = margin(b = 10)
      ),
      plot.subtitle = element_text(
        color = kanagawa_colors$fg, 
        size = rel(1.1),
        hjust = 0,
        margin = margin(b = 15)
      ),
      plot.caption = element_text(
        color = kanagawa_colors$comment, 
        size = rel(0.8),
        hjust = 1,
        margin = margin(t = 10)
      ),
      axis.title = element_text(color = kanagawa_colors$fg, size = rel(1)),
      axis.text = element_text(color = kanagawa_colors$fg, size = rel(0.9)),
      
      # Fundo e Painel
      plot.background = element_rect(fill = kanagawa_colors$bg, color = NA),
      panel.background = element_rect(fill = kanagawa_colors$bg, color = NA),
      
      # Linhas de Grade (Grid)
      panel.grid.major = element_line(color = kanagawa_colors$comment, linetype = "dotted", linewidth = 0.3),
      panel.grid.minor = element_blank(),
      
      # Eixos e Ticks
      axis.line = element_line(color = kanagawa_colors$comment, linewidth = 0.5),
      axis.ticks = element_line(color = kanagawa_colors$comment, linewidth = 0.4),
      
      # Legenda
      legend.background = element_rect(fill = kanagawa_colors$bg, color = NA),
      legend.key = element_rect(fill = kanagawa_colors$bg, color = NA),
      legend.title = element_text(color = kanagawa_colors$fg, face = "bold"),
      legend.text = element_text(color = kanagawa_colors$fg),
      
      # Margem do Gráfico
      plot.margin = margin(20, 20, 20, 20)
    )
}

# --- Paletas de Cores para os Dados ---
kanagawa_palette <- c(
  kanagawa_colors$green, 
  kanagawa_colors$yellow, 
  kanagawa_colors$magenta, 
  kanagawa_colors$cyan, 
  kanagawa_colors$red
)

# Funções auxiliares para aplicar a paleta
scale_color_kanagawa <- function(...) {
  scale_color_manual(values = kanagawa_palette, ...)
}

scale_fill_kanagawa <- function(...) {
  scale_fill_manual(values = kanagawa_palette, ...)
}
# ```
