/** @type {import('next').NextConfig} */
const nextConfig = {
      // pageExtensions: ['tsx', 'ts'],
  webpack(config) {
    config.module.rules.push(
      {
        test: /.(ttf|woff|eot|woff2)$/,
        use: {
          loader: 'file-loader',
          options: {
            publicPath: '_next/static/media',
            outputPath: 'static/media',
            name: '[name].[ext]',
          },
        },
      }
    )

    return config
  },


}

module.exports = nextConfig
