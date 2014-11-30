package org.jdataex.flow.row;

import java.io.File;

public class ColumnValueFile implements IColumnValueFile {

	private File file;
	private String fileName;
	private String relativePath;
	private long lastModified;
	private boolean executable;// windows下可以看做为没这个属性。
	private boolean readable;// windows下可以看做为没这个属性。
	private boolean writable;

	/* (non-Javadoc)
	 * @see org.jdataex.flow.row.IColumnValueFile#getFile()
	 */
	@Override
	public File getFile() {
		return file;
	}

	/* (non-Javadoc)
	 * @see org.jdataex.flow.row.IColumnValueFile#setFile(java.io.File)
	 */
	@Override
	public void setFile(File file) {
		this.file = file;
	}

	/* (non-Javadoc)
	 * @see org.jdataex.flow.row.IColumnValueFile#getFileName()
	 */
	@Override
	public String getFileName() {
		return fileName;
	}

	/* (non-Javadoc)
	 * @see org.jdataex.flow.row.IColumnValueFile#setFileName(java.lang.String)
	 */
	@Override
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	/* (non-Javadoc)
	 * @see org.jdataex.flow.row.IColumnValueFile#getRelativePath()
	 */
	@Override
	public String getRelativePath() {
		return relativePath;
	}

	/* (non-Javadoc)
	 * @see org.jdataex.flow.row.IColumnValueFile#setRelativePath(java.lang.String)
	 */
	@Override
	public void setRelativePath(String relativePath) {
		this.relativePath = relativePath;
	}

	/* (non-Javadoc)
	 * @see org.jdataex.flow.row.IColumnValueFile#getLastModified()
	 */
	@Override
	public long getLastModified() {
		return lastModified;
	}

	/* (non-Javadoc)
	 * @see org.jdataex.flow.row.IColumnValueFile#setLastModified(long)
	 */
	@Override
	public void setLastModified(long lastModified) {
		this.lastModified = lastModified;
	}

	/* (non-Javadoc)
	 * @see org.jdataex.flow.row.IColumnValueFile#isExecutable()
	 */
	@Override
	public boolean isExecutable() {
		return executable;
	}

	/* (non-Javadoc)
	 * @see org.jdataex.flow.row.IColumnValueFile#setExecutable(boolean)
	 */
	@Override
	public void setExecutable(boolean executable) {
		this.executable = executable;
	}

	/* (non-Javadoc)
	 * @see org.jdataex.flow.row.IColumnValueFile#isReadable()
	 */
	@Override
	public boolean isReadable() {
		return readable;
	}

	/* (non-Javadoc)
	 * @see org.jdataex.flow.row.IColumnValueFile#setReadable(boolean)
	 */
	@Override
	public void setReadable(boolean readable) {
		this.readable = readable;
	}

	/* (non-Javadoc)
	 * @see org.jdataex.flow.row.IColumnValueFile#isWritable()
	 */
	@Override
	public boolean isWritable() {
		return writable;
	}

	/* (non-Javadoc)
	 * @see org.jdataex.flow.row.IColumnValueFile#setWritable(boolean)
	 */
	@Override
	public void setWritable(boolean writable) {
		this.writable = writable;
	}

}
