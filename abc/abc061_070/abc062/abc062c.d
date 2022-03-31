import std;

void main() {
    long H, W;
    readf("%d %d\n", H, W);

    long S = H * W;
    long res = long.max;

    foreach (h; 1 .. H) {
        long s1 = h * W, s2 = (H - h) * (W / 2), s3 = S - s1 - s2;
        long D = max(s1, s2, s3) - min(s1, s2, s3);
        res = min(res, D);

        s2 = ((H - h) / 2) * W, s3 = S - s1 - s2;
        D = max(s1, s2, s3) - min(s1, s2, s3);
        res = min(res, D);
    }

    foreach (w; 1 .. W) {
        long s1 = H * w, s2 = (H / 2) * (W - w), s3 = S - s1 - s2;
        long D = max(s1, s2, s3) - min(s1, s2, s3);
        res = min(res, D);

        s2 = H * ((W - w) / 2), s3 = S - s1 - s2;
        D = max(s1, s2, s3) - min(s1, s2, s3);
        res = min(res, D);
    }

    res.writeln;
}