import { locales } from "@/i18n/routing";
import type { MetadataRoute } from "next";

// const url = "http://13.215.228.26";

export default function robots(): MetadataRoute.Robots {
  const disallowPathsAdmin = locales.map((locale) => `/${locale}/admin`);
  const disallowPathsProfile = locales.map((locale) => `/${locale}/profile`);
  const disallowPathsPayment = locales.map((locale) => `/${locale}/payment`);
  const disallowPathsPlaylist = locales.map((locale) => `/${locale}/playList`);
  const disallowPathsUpgrade = locales.map((locale) => `/${locale}/upgrade`);
  return {
    rules: {
      userAgent: "*",
      allow: ["/"],
      disallow: [
        ...disallowPathsAdmin,
        ...disallowPathsProfile,
        ...disallowPathsPayment,
        ...disallowPathsPlaylist,
        ...disallowPathsUpgrade,
      ],
    },
    // sitemap: `${url}/sitemap.xml`,
  };
}
