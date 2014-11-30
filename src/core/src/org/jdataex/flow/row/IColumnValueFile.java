package org.jdataex.flow.row;

import java.io.File;

public interface IColumnValueFile {

	public abstract File getFile();

	public abstract void setFile(File file);

	public abstract String getFileName();

	public abstract void setFileName(String fileName);

	public abstract String getRelativePath();

	public abstract void setRelativePath(String relativePath);

	public abstract long getLastModified();

	public abstract void setLastModified(long lastModified);

	public abstract boolean isExecutable();

	public abstract void setExecutable(boolean executable);

	public abstract boolean isReadable();

	public abstract void setReadable(boolean readable);

	public abstract boolean isWritable();

	public abstract void setWritable(boolean writable);

}