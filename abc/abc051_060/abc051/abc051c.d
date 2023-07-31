import std;

void main() {
    int sx, sy, tx, ty;
    readf("%d %d %d %d\n", sx, sy, tx, ty);

    dchar[] res, dirs = ['U', 'R', 'D', 'L'];
    foreach (i; 0 .. 8) {
        res ~= dirs[i%4].repeat(i%2==0?ty-sy+i/4:tx-sx+i/4).array;

        if (i == 3) res ~= 'L';
        if (i == 5) res ~= ['D', 'R'];
        if (i == 7) res ~= 'U';
    }

    res.writeln;
}