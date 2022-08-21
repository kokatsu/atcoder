import std;

void main() {
    int H, W;
    readf("%d %d\n", H, W);

    auto G = new string[](H);
    foreach (i; 0 .. H) G[i] = readln.chomp;

    auto seen = new bool[][](H, W);
    int x, y;
    while (true) {
        seen[x][y] = true;

        if (G[x][y] == 'U') {
            if (x == 0) break;
            else x -= 1;
        }
        else if (G[x][y] == 'D') {
            if (x == H - 1) break;
            else x += 1;
        }
        else if (G[x][y] == 'L') {
            if (y == 0) break;
            else y -= 1;
        }
        else {
            if (y == W - 1) break;
            else y += 1;
        }

        if (seen[x][y]) {
            writeln(-1);
            return;
        }
    }

    writeln(x+1, " ", y+1);
}