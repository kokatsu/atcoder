import std;

void main() {
    int H, W, N;
    readfln("%d %d %d", H, W, N);

    int res;
    dchar[][] S = new dchar[][](H);
    foreach (ref s; S) {
        readfln("%s", s);
        res += s.count('#');
    }

    string T;
    readfln("%s", T);

    if (S[0][0] == '#') {
        --res;
        S[0][0] = '.';
    }

    int x, y;
    foreach (t; T) {
        int u = x, v = y;
        if (t == 'U') {
            --u;
        }
        else if (t == 'D') {
            ++u;
        }
        else if (t == 'L') {
            --v;
        }
        else {
            ++v;
        }

        if (u < 0 || H <= u || v < 0 || W <= v) {
            continue;
        }

        if (S[u][v] == '#') {
            --res;
            S[u][v] = '.';
        }

        x = u, y = v;
    }

    res.writeln;
}
