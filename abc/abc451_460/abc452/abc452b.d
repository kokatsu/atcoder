import std;

void main() {
    int H, W;
    readfln("%d %d", H, W);

    char[][] F = new char[][](H, W);
    F[0][] = '#', F[H - 1][] = '#';
    foreach (i; 1 .. H - 1) {
        F[i][] = '.';
        F[i][0] = '#', F[i][W - 1] = '#';
    }

    string res = format("%(%-(%c%)\n%)", F);
    res.writeln;
}
