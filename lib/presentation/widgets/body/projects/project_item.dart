import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../data/models/project.dart';
import 'project_actions.dart';

class ProjectItem extends StatelessWidget {
  const ProjectItem({super.key, required this.project});
  final Project project;

  @override
  Widget build(BuildContext context) {
    return  Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.primaryLight,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: CachedNetworkImage(
                 imageUrl: project.imageUrl,
                  // width: 80,
                  height: 200,
                  fit: BoxFit.cover, 
                   placeholder: (context, url) => const CircularProgressIndicator(),
                   errorWidget: (context, url, error) {
                          return Icon(
                            Icons.error,
                            color: AppColors.darkColor,
                            size: 50,
                          );
                        },
                ),
              ),
            ),
            // ProjectImage(imageUrl: project.imageUrl),
            const SizedBox(height: 20),
            FittedBox(
              child: Text(
                project.name,
                style: AppStyles.s24.copyWith(color: AppColors.primaryColor),
              ),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: AutoSizeText(
                project.description,
                style: AppStyles.s18,
                minFontSize: 12,
                maxLines: 3,
              ),
            ),
            const SizedBox(height: 8),
            // if (project.previewLink != null || project.githubRepoLink != null)
            ProjectActions(project: project),
          ],
        ),
      );
  }
}
