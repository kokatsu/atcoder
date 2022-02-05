import std;

void main() {
    int T;
    readf("%d\n", T);

    foreach (_; 0 .. T) {
        long a, s;
        readf("%d %d\n", a, s);

        long xor = s - a * 2;
        long or = xor + a;

        bool isOK = (xor >= 0);
        while (a > 0 || or > 0) {
            if (a % 2 == 1 && or % 2 == 0) {
                isOK = false;
            }
            a /= 2, or /= 2;
        }

        writeln(isOK ? "Yes" : "No");
    }
}