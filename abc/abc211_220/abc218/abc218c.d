import std;

struct Coord {
    int x, y;
}

void rotate(T)(int len, ref T[][] mat) {
    foreach (i; 0 .. len) {
        foreach (j; 0 .. i) {
            swap(mat[i][j], mat[j][i]);
        }
    }

    foreach (i; 0 .. len) {
        mat[i].reverse;
    }
}

void main() {
    int N;
    readf("%d\n", N);

    int u;
    auto S = new dchar[][](N);
    foreach (i; 0 .. N) {
        S[i] = readln.chomp.to!(dchar[]);
        u += S[i].count('#');
    }

    int v;
    auto T = new dchar[][](N);
    foreach (i; 0 .. N) {
        T[i] = readln.chomp.to!(dchar[]);
        v += T[i].count('#');
    }

    Coord f(dchar[][] mat) {
        foreach (i; 0 .. N) {
            foreach (j; 0 .. N) {
                if (mat[i][j] == '#') {
                    return Coord(i, j);
                }
            }
        }
        return Coord(N, N);
    }

    Coord t = f(T);

    bool g() {
        Coord s = f(S);
        int dx = t.x - s.x, dy = t.y - s.y;
        foreach (i; 0 .. N) {
            foreach (j; 0 .. N) {
                int k = i + dx, l = j + dy;
                if (0 <= k && k < N && 0 <= l && l < N) {
                    if (S[i][j] != T[k][l]) {
                        return false;
                    }
                }
                else {
                    if (S[i][j] == '#') {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    bool isOK;
    foreach (i; 0 .. 4) {
        isOK |= g();

        rotate!dchar(N, S);
    }

    isOK &= (u == v);

    writeln(isOK ? "Yes" : "No");
}