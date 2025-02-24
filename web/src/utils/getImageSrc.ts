import { useShopStore } from "@/stores/shop"

export const getImageSrc = (image: string): string | undefined => {
  const shopStore = useShopStore()
  if (!image || typeof image !== "string") return undefined

  return `${shopStore.imagePath}${encodeURIComponent(image)}.png`
}
