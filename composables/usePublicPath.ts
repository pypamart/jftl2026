/**
 * Resolves a public asset path relative to the Vite base URL.
 * Needed when Slidev is built with --base (e.g. /jftl2026/).
 *
 * Paths starting with "/" are rewritten to BASE_URL + filename
 * so they work on both root deployments and sub-path deployments.
 */
export function resolvePublicPath(path: string | null | undefined): string | undefined {
  if (!path) return undefined
  if (path.startsWith('/') && !path.startsWith('//') && !path.startsWith('http')) {
    return import.meta.env.BASE_URL + path.slice(1)
  }
  return path
}
