import std;

void main() {
    int H, W;
    readf("%d %d\n", H, W);

    auto S = new dchar[][](H);
    foreach (i; 0 .. H) {
        readf("%s\n", S[i]);
    }

    foreach (i; 0 .. H) {
        foreach (j; 1 .. W) {
            if (S[i][j - 1] == 'T' && S[i][j] == 'T') {
                S[i][j - 1] = 'P';
                S[i][j] = 'C';
            }
        }
    }

    writefln("%(%-(%s%)\n%)", S);
}
