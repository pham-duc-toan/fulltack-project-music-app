"use client";
import * as React from "react";

import Card from "@mui/material/Card";
import CardContent from "@mui/material/CardContent";
import Typography from "@mui/material/Typography";
import Box from "@mui/material/Box";

import { Link } from "@/i18n/routing";
import Image from "next/image";
import { useTranslations } from "next-intl";

export default function ItemControlCardSinger({
  data,
}: {
  data: {
    id: string;
    fullName: string;
    avatar: string;
    songsCount: number;
    slug: string;
  };
}) {
  const t = useTranslations("ItemControlCardSinger");

  return (
    <Card sx={{ display: "flex" }}>
      <Box sx={{ display: "flex", flexDirection: "column", width: "50%" }}>
        <CardContent sx={{ flex: "1 0 auto", padding: "32px 24px 0 24px" }}>
          {/* Hiển thị tên ca sĩ */}
          <Typography
            component="div"
            variant="h5"
            height={"100px"}
            sx={{
              fontSize: "20px",
              lineHeight: "1.3",
              height: "78px",
              overflow: "hidden",
              textOverflow: "ellipsis",
              display: "-webkit-box",
              WebkitBoxOrient: "vertical",
              WebkitLineClamp: 3,
              wordWrap: "break-word",
            }}
          >
            <Link href={`/singers/detailSinger/${data.slug}`}>
              {data.fullName}
            </Link>
          </Typography>
          {/* Hiển thị số bài hát */}
          <Typography variant="body2" color="text.secondary">
            {t("songCount", { count: data.songsCount || 0 })}
          </Typography>
        </CardContent>
      </Box>

      {/* Hiển thị ảnh đại diện */}
      <img
        src={data.avatar}
        alt={data.fullName}
        width="210"
        height="210"
        style={{ objectFit: "cover" }}
        loading="lazy"
      />
    </Card>
  );
}
