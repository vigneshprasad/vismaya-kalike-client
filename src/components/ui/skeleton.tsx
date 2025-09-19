import React from 'react'

function Skeleton({
  className = '',
  ...props
}: React.HTMLAttributes<HTMLDivElement>) {
  return (
    <div
      className={`animate-pulse rounded-md bg-gray-100 ${className}`}
      {...props}
    />
  )
}

export { Skeleton }