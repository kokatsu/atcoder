import std;

void main() {
    int N;
    readf("%d\n", N);

    auto s = new dchar[][](N);
    foreach (i; 0 .. N) s[i] = readln.chomp.to!(dchar[]);

    auto res = rotate(s);
    writefln("%(%-(%s%)\n%)", res);
}

T[][] rotate(T)(T[][] mat) {
    auto r = mat.length, c = mat[0].length;
    auto ret = new T[][](c, r);
    foreach (i; 0 .. r) {
        foreach (j; 0 .. c) {
            ret[j][r-i-1] = mat[i][j];
        }
    }
    return ret;
}