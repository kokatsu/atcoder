import std;

void main() {
    int H, W, X, Y;
    readf("%d %d %d %d\n", H, W, X, Y);

    auto S = new char[][](H);
    foreach (i; 0 .. H) {
        readf("%s\n", S[i]);
    }

    string T;
    readf("%s\n", T);

    --X, --Y;

    bool next(ref int x, ref int y, char d) {
        switch (d) {
        case 'U':
            if (x == 0 || S[x - 1][y] == '#') {
                return false;
            }
            --x;
            break;
        case 'D':
            if (x == H - 1 || S[x + 1][y] == '#') {
                return false;
            }
            ++x;
            break;
        case 'L':
            if (y == 0 || S[x][y - 1] == '#') {
                return false;
            }
            --y;
            break;
        case 'R':
            if (y == W - 1 || S[x][y + 1] == '#') {
                return false;
            }
            ++y;
            break;
        default:
        }
        return true;
    }

    int count;
    foreach (t; T) {
        if (!next(X, Y, t)) {
            continue;
        }

        if (S[X][Y] == '@') {
            ++count;
            S[X][Y] = '.';
        }
    }

    string res = format("%d %d %d", X + 1, Y + 1, count);
    res.writeln;
}
