/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ozakkare <ozakkare@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/03/08 15:11:23 by ozakkare          #+#    #+#             */
/*   Updated: 2020/03/08 16:37:40 by ozakkare         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"

int	main(void)
{
	char	*dest;
	int		fd;
	char	buf[100];
	char	*str;

	printf("ft_strlen: %zu\n", ft_strlen("1337"));
	dest = malloc(5);
	printf("ft_strcpy: %s  ", ft_strcpy(dest, "1337"));
	printf("dest: %s\n", dest);
	printf("ft_strcmp: %d  ", ft_strcmp("1337", "42"));
	printf("  || ret: %zd\n", ft_write(1, "1337", 4));
	buf[99] = '\0';
	fd = open("main.c", O_RDONLY);
	printf("ft_read: %zd\n", ft_read(fd, buf, 90));
	printf("buf: %s\n", buf);
	str = ft_strdup("allocated succefully");
	printf("ft_strdup: %s\n", str);
	return (0);
}
