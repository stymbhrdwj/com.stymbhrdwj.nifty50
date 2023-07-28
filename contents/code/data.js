// Import required libraries
const http = require('http');
const https = require('https');
const cheerio = require('cheerio');

// Function to fetch data from the URL and extract required information
function func() {
    const url = 'https://www.google.com/finance/quote/NIFTY_50:INDEXNSE';
    const protocol = url.startsWith('https') ? https : http;

    // Make the HTTP request
    protocol.get(url, (response) => {
        let html_content = '';
        response.on('data', (chunk) => {
            html_content += chunk;
        });

        response.on('end', () => {
            // Parse the HTML content with cheerio
            const doc = parser.parseFromString(html_content, 'text/html');
            const $ = cheerio.load(html_content);

            // Extract the required values
            const val = $('.YMlKec.fxKbKc').text().trim();
            const percent = $('.JwB6zf.V7hZne').first().text();
            const points = $('.P2Luy.Ebnabc').eq(1).text().trim();

            let arrow = '';
            if (points[0] === '-') {
                arrow = '🡇';
            } else {
                arrow = '🡅';
            }

            const mainText = val;
            const subText = points + ' (' + percent + ') ' + arrow;
            console.log('Main Text:', mainText);
            console.log('Sub Text:', subText);
            return [mainText, subText];
        });
    });
}