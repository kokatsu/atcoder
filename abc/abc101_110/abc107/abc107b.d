import std;

void main() {
    int H, W;
    readf("%d %d\n", H, W);

    dchar[][] X;
    foreach (_; 0 .. H) {
        auto a = readln.chomp.to!(dchar[]);

        auto cnt = a.count('#');
        if (cnt == 0) {
            --H;
        }
        else {
            X ~= a;
        }
    }

    auto Y = new dchar[][](H);
    foreach (i; 0 .. W) {
        int cnt;
        foreach (j; 0 .. H) {
            if (X[j][i] == '#') ++cnt;
        }

        if (cnt == 0) continue;

        foreach (j; 0 .. H) {
            Y[j] ~= X[j][i];
        }
    }

    foreach (y; Y) y.writeln;
}