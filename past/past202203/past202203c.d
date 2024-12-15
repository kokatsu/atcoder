import std;

void main() {
    string alpha;
    readf("%s\n", alpha);

    size_t L = alpha.length;
    size_t D = L / 3, R = L % 3, T = (R == 0 ? D - 1 : D);
    size_t N = L - T * 3;

    string res = alpha[0 .. N] ~ to!dchar('a' + T - 1).to!string;
    res.writeln;
}
