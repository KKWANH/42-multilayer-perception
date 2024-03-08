# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kkim <kwanho0096@gmail.com>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/31 16:01:01 by kkim              #+#    #+#              #
#    Updated: 2024/03/08 16:45:33 by kkim             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# ------------------------------------------------------------------------------
# Font Defines

# Color
BLA		= \033[30m
RED		= \033[31m
GRE		= \033[32m
YEL		= \033[33m
BLU		= \033[34m
MAG		= \033[35m
CYA		= \033[36m
WHI		= \033[37m
DEF		= \033[38m

# Font Style
BLD		= \033[1m
UND		= \033[4m

# Reset
RES		= \033[0m

# ------------------------------------------------------------------------------
# File Defines

SRC		= ./srcs
SETUP 	= ./setup/install.sh
ENV 	= ./ft_env/
ACTIV	= bin/activate

# ------------------------------------------------------------------------------
# Options
all:
	@make help

setup:
	@clear
	@make help
	@printf "\n"
	@printf "$(BLD)$(GRE)[Setup]     $(RES)\tSetting virtual-environment via $(CYA)[setup.sh]$(RES).\n\n\n"
	@$(SETUP) > /dev/null
	@printf "$(BLD)$(GRE)[Setup]     $(RES)\tInstall has been compltetd.\n"
	@printf "$(BLD)$(GRE)            $(RES)\tPlease run $(CYA)[source ft_env/bin/activate]$(RES) to launch the virtual environment.\n"
	@printf "\n"

activate:
	@clear
	@make help
	@printf "\n"
	@printf "$(BLD)$(CYA)[Activate]  $(RES)\tPlease run $(CYA)[source ft_env/bin/activate]$(RES) to launch the virtual environment.\n"
	@printf "\n"

deactivate:
	@clear
	@make help
	@printf "\n"
	@printf "$(BLD)$(MAG)[Activate]  $(RES)\tPlease run $(MAG)[deactivate]$(RES) to deactivate the virtual environment.\n"
	@printf "\n"

clean:
	@clear
	@make help
	@printf "\n"
	@printf "$(BLD)$(RED)[Clean]     $(RES)\tRemoving ft_env folder.\n"
	@rm -rf $(ENV)
	@printf "\n"

help:
	@clear
	@printf "\n"
	@printf "$(BLD)$(YEL)[Help]      $(RES)\tWelcome to $(BLD)$(UND)$(CYA)Multilayer-Perception$(RES) by $(BLD)$(MAG)kkim$(RES).\n"
	@printf "$(BLD)$(YEL)            $(RES)\tthere are $(YEL)5$(RES) options available.\n"
	@printf "\n"
	@printf "$(BLD)$(YEL)            $(RES)\t$(BLD)$(YEL)[help]$(RES)        makefile launch options\n"
	@printf "$(BLD)$(YEL)            $(RES)\t$(BLD)$(GRE)[setup]$(RES)       install libraries through python virtual environment\n"
	@printf "$(BLD)$(YEL)            $(RES)\t$(BLD)$(CYA)[activate]$(RES)    activating installed virtual environment\n"
	@printf "$(BLD)$(YEL)            $(RES)\t$(BLD)$(MAG)[deactivate]$(RES)  deactivating installed virtual environment\n"
	@printf "$(BLD)$(YEL)            $(RES)\t$(BLD)$(RED)[clean]$(RES)       remove ft_env(virtual environment) folder\n"
	@printf "\n"

.PHONY: all help setup activate deactivate