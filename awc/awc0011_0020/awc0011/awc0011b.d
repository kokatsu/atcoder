import std;

void main() {
    int H, W, K;
    readfln("%d %d %d", H, W, K);

    dchar c1, c2;
    readfln("%c %c", c1, c2);

    dchar[][] R = new dchar[][](H * K, W * K);
    foreach (i; 0 .. H) {
        string S;
        readfln("%s", S);

        foreach (j; 0 .. K) {
            foreach (k; 0 .. W) {
                foreach (l; 0 .. K) {
                    R[i * K + j][k * K + l] = S[k] == '#' ? c1 : c2;
                }
            }
        }
    }

    string res = format("%(%-(%c%)\n%)", R);
    res.writeln;
}
