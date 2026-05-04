import std;

void main() {
    int N;
    readfln("%d", N);

    string[] W = new string[](N);
    foreach (ref w; W) {
        readfln("%s", w);
    }

    bool[string] D;
    string res = "DRAW";
    foreach (i, w; W) {
        if (D.get(w, false) || (i > 0 && w[0] != W[i - 1][$ - 1])) {
            res = (i % 2 == 1) ? "WIN" : "LOSE";
            break;
        }
        D[w] = true;
    }

    res.writeln;
}
